
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef void* u16 ;
struct vnic_dev {int pdev; } ;
struct filter_tlv {int length; int val; int type; } ;
struct TYPE_2__ {void* rq_idx; } ;
struct filter_action {TYPE_1__ u; int type; } ;
struct filter {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ CLSF_ADD ;
 scalar_t__ CLSF_DEL ;
 int CLSF_TLV_ACTION ;
 int CLSF_TLV_FILTER ;
 int CMD_ADD_FILTER ;
 int CMD_DEL_FILTER ;
 int EINVAL ;
 int ENOMEM ;
 int FILTER_ACTION_RQ_STEERING ;
 int memset (struct filter_tlv*,int ,int) ;
 struct filter_tlv* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,struct filter_tlv*,int) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int*,int*,int) ;

int vnic_dev_classifier(struct vnic_dev *vdev, u8 cmd, u16 *entry,
   struct filter *data)
{
 u64 a0, a1;
 int wait = 1000;
 dma_addr_t tlv_pa;
 int ret = -EINVAL;
 struct filter_tlv *tlv, *tlv_va;
 struct filter_action *action;
 u64 tlv_size;

 if (cmd == CLSF_ADD) {
  tlv_size = sizeof(struct filter) +
      sizeof(struct filter_action) +
      2 * sizeof(struct filter_tlv);
  tlv_va = pci_alloc_consistent(vdev->pdev, tlv_size, &tlv_pa);
  if (!tlv_va)
   return -ENOMEM;
  tlv = tlv_va;
  a0 = tlv_pa;
  a1 = tlv_size;
  memset(tlv, 0, tlv_size);
  tlv->type = CLSF_TLV_FILTER;
  tlv->length = sizeof(struct filter);
  *(struct filter *)&tlv->val = *data;

  tlv = (struct filter_tlv *)((char *)tlv +
         sizeof(struct filter_tlv) +
         sizeof(struct filter));

  tlv->type = CLSF_TLV_ACTION;
  tlv->length = sizeof(struct filter_action);
  action = (struct filter_action *)&tlv->val;
  action->type = FILTER_ACTION_RQ_STEERING;
  action->u.rq_idx = *entry;

  ret = vnic_dev_cmd(vdev, CMD_ADD_FILTER, &a0, &a1, wait);
  *entry = (u16)a0;
  pci_free_consistent(vdev->pdev, tlv_size, tlv_va, tlv_pa);
 } else if (cmd == CLSF_DEL) {
  a0 = *entry;
  ret = vnic_dev_cmd(vdev, CMD_DEL_FILTER, &a0, &a1, wait);
 }

 return ret;
}
