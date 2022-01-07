
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qede_dev {int cdev; struct qed_eth_ops* ops; } ;
struct TYPE_2__ {int (* stringify ) (TYPE_1__*,char*) ;} ;
struct qede_arfs_fltr_node {int used; int filter_op; scalar_t__ vfid; int sw_id; TYPE_1__ tuple; int b_is_drop; int buf_len; int mapping; } ;
struct qed_ntuple_filter_params {int b_is_add; int b_is_vf; scalar_t__ vf_id; int b_is_drop; int qid; int length; int addr; } ;
struct qed_eth_ops {int (* ntuple_filter_config ) (int ,struct qede_arfs_fltr_node*,struct qed_ntuple_filter_params*) ;} ;
typedef int params ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,char*,int ,char*,scalar_t__,int ) ;
 int NETIF_MSG_RX_STATUS ;
 int QEDE_FILTER_PRINT_MAX_LEN ;
 int memset (struct qed_ntuple_filter_params*,int ,int) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (int ,struct qede_arfs_fltr_node*,struct qed_ntuple_filter_params*) ;

__attribute__((used)) static void qede_configure_arfs_fltr(struct qede_dev *edev,
         struct qede_arfs_fltr_node *n,
         u16 rxq_id, bool add_fltr)
{
 const struct qed_eth_ops *op = edev->ops;
 struct qed_ntuple_filter_params params;

 if (n->used)
  return;

 memset(&params, 0, sizeof(params));

 params.addr = n->mapping;
 params.length = n->buf_len;
 params.qid = rxq_id;
 params.b_is_add = add_fltr;
 params.b_is_drop = n->b_is_drop;

 if (n->vfid) {
  params.b_is_vf = 1;
  params.vf_id = n->vfid - 1;
 }

 if (n->tuple.stringify) {
  char tuple_buffer[QEDE_FILTER_PRINT_MAX_LEN];

  n->tuple.stringify(&n->tuple, tuple_buffer);
  DP_VERBOSE(edev, NETIF_MSG_RX_STATUS,
      "%s sw_id[0x%llx]: %s [vf %u queue %d]\n",
      add_fltr ? "Adding" : "Deleting",
      n->sw_id, tuple_buffer, n->vfid, rxq_id);
 }

 n->used = 1;
 n->filter_op = add_fltr;
 op->ntuple_filter_config(edev->cdev, n, &params);
}
