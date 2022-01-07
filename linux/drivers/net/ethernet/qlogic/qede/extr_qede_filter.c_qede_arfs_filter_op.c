
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qede_dev {TYPE_2__* arfs; } ;
struct TYPE_3__ {int dst_port; int src_port; } ;
struct qede_arfs_fltr_node {scalar_t__ rxq_id; int used; scalar_t__ next_rxq_id; int state; scalar_t__ filter_op; TYPE_1__ tuple; int sw_id; int flow_id; int fw_rc; } ;
struct TYPE_4__ {int arfs_list_lock; } ;


 int DP_NOTICE (struct qede_dev*,char*,int ,int ,int ,int ,int ,scalar_t__) ;
 int QEDE_FLTR_VALID ;
 int clear_bit (int ,int *) ;
 int ntohs (int ) ;
 int qede_configure_arfs_fltr (struct qede_dev*,struct qede_arfs_fltr_node*,scalar_t__,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void qede_arfs_filter_op(void *dev, void *filter, u8 fw_rc)
{
 struct qede_arfs_fltr_node *fltr = filter;
 struct qede_dev *edev = dev;

 fltr->fw_rc = fw_rc;

 if (fw_rc) {
  DP_NOTICE(edev,
     "Failed arfs filter configuration fw_rc=%d, flow_id=%d, sw_id=0x%llx, src_port=%d, dst_port=%d, rxq=%d\n",
     fw_rc, fltr->flow_id, fltr->sw_id,
     ntohs(fltr->tuple.src_port),
     ntohs(fltr->tuple.dst_port), fltr->rxq_id);

  spin_lock_bh(&edev->arfs->arfs_list_lock);

  fltr->used = 0;
  clear_bit(QEDE_FLTR_VALID, &fltr->state);

  spin_unlock_bh(&edev->arfs->arfs_list_lock);
  return;
 }

 spin_lock_bh(&edev->arfs->arfs_list_lock);

 fltr->used = 0;

 if (fltr->filter_op) {
  set_bit(QEDE_FLTR_VALID, &fltr->state);
  if (fltr->rxq_id != fltr->next_rxq_id)
   qede_configure_arfs_fltr(edev, fltr, fltr->rxq_id,
       0);
 } else {
  clear_bit(QEDE_FLTR_VALID, &fltr->state);
  if (fltr->rxq_id != fltr->next_rxq_id) {
   fltr->rxq_id = fltr->next_rxq_id;
   qede_configure_arfs_fltr(edev, fltr,
       fltr->rxq_id, 1);
  }
 }

 spin_unlock_bh(&edev->arfs->arfs_list_lock);
}
