
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qed_ll2_params {int ll2_mac_address; scalar_t__ mtu; } ;
struct qed_ll2_buffer {int list; int phys_addr; int data; } ;
struct qed_hwfn {TYPE_1__* ll2; int ll2_mac_address; } ;
struct qed_dev {TYPE_1__* ll2; int ll2_mac_address; } ;
struct TYPE_2__ {int handle; int list; scalar_t__ rx_size; int lock; int cbs; } ;


 int DP_INFO (struct qed_hwfn*,char*,...) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ ETH_HLEN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ L1_CACHE_BYTES ;
 scalar_t__ NET_SKB_PAD ;
 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_hwfn*) ;
 scalar_t__ QED_IS_ISCSI_PERSONALITY (struct qed_hwfn*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_hwfn*) ;
 int QED_LL2_RX_SIZE ;
 int QED_LL2_UNUSED_HANDLE ;
 int QED_MSG_STORAGE ;
 int WARN_ON (int) ;
 int __qed_ll2_start (struct qed_hwfn*,struct qed_ll2_params*) ;
 int __qed_ll2_stop (struct qed_hwfn*) ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int kfree (struct qed_ll2_buffer*) ;
 struct qed_ll2_buffer* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int qed_ll2_alloc_buffer (struct qed_hwfn*,int **,int *) ;
 int qed_ll2_is_storage_eng1 (struct qed_hwfn*) ;
 int qed_ll2_kill_buffers (struct qed_hwfn*) ;
 int qed_ll2_start_ooo (struct qed_hwfn*,struct qed_ll2_params*) ;
 int qed_ll2_stop_ooo (struct qed_hwfn*) ;
 int qed_llh_add_mac_filter (struct qed_hwfn*,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qed_ll2_start(struct qed_dev *cdev, struct qed_ll2_params *params)
{
 bool b_is_storage_eng1 = qed_ll2_is_storage_eng1(cdev);
 struct qed_hwfn *p_hwfn = QED_AFFIN_HWFN(cdev);
 struct qed_ll2_buffer *buffer;
 int rx_num_desc, i, rc;

 if (!is_valid_ether_addr(params->ll2_mac_address)) {
  DP_NOTICE(cdev, "Invalid Ethernet address\n");
  return -EINVAL;
 }

 WARN_ON(!cdev->ll2->cbs);


 INIT_LIST_HEAD(&cdev->ll2->list);
 spin_lock_init(&cdev->ll2->lock);

 cdev->ll2->rx_size = NET_SKB_PAD + ETH_HLEN +
        L1_CACHE_BYTES + params->mtu;





 rx_num_desc = QED_LL2_RX_SIZE * (b_is_storage_eng1 ? 2 : 1);
 DP_INFO(cdev, "Allocating %d LL2 buffers of size %08x bytes\n",
  rx_num_desc, cdev->ll2->rx_size);
 for (i = 0; i < rx_num_desc; i++) {
  buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
  if (!buffer) {
   DP_INFO(cdev, "Failed to allocate LL2 buffers\n");
   rc = -ENOMEM;
   goto err0;
  }

  rc = qed_ll2_alloc_buffer(cdev, (u8 **)&buffer->data,
       &buffer->phys_addr);
  if (rc) {
   kfree(buffer);
   goto err0;
  }

  list_add_tail(&buffer->list, &cdev->ll2->list);
 }

 rc = __qed_ll2_start(p_hwfn, params);
 if (rc) {
  DP_NOTICE(cdev, "Failed to start LL2\n");
  goto err0;
 }




 if (b_is_storage_eng1) {
  rc = __qed_ll2_start(QED_LEADING_HWFN(cdev), params);
  if (rc) {
   DP_NOTICE(QED_LEADING_HWFN(cdev),
      "Failed to start LL2 on engine 0\n");
   goto err1;
  }
 }

 if (QED_IS_ISCSI_PERSONALITY(p_hwfn)) {
  DP_VERBOSE(cdev, QED_MSG_STORAGE, "Starting OOO LL2 queue\n");
  rc = qed_ll2_start_ooo(p_hwfn, params);
  if (rc) {
   DP_NOTICE(cdev, "Failed to start OOO LL2\n");
   goto err2;
  }
 }

 rc = qed_llh_add_mac_filter(cdev, 0, params->ll2_mac_address);
 if (rc) {
  DP_NOTICE(cdev, "Failed to add an LLH filter\n");
  goto err3;
 }

 ether_addr_copy(cdev->ll2_mac_address, params->ll2_mac_address);

 return 0;

err3:
 if (QED_IS_ISCSI_PERSONALITY(p_hwfn))
  qed_ll2_stop_ooo(p_hwfn);
err2:
 if (b_is_storage_eng1)
  __qed_ll2_stop(QED_LEADING_HWFN(cdev));
err1:
 __qed_ll2_stop(p_hwfn);
err0:
 qed_ll2_kill_buffers(cdev);
 cdev->ll2->handle = QED_LL2_UNUSED_HANDLE;
 return rc;
}
