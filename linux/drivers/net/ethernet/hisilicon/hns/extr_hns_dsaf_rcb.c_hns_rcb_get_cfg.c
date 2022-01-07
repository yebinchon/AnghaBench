
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {void* phy_base; void* io_base; } ;
struct ring_pair_cb {size_t index; int* virq; TYPE_2__ q; int port_id_in_comm; int dev; struct rcb_common_cb* rcb_common; } ;
struct rcb_common_cb {size_t ring_num; int phy_base; int io_base; TYPE_1__* dsaf_dev; struct ring_pair_cb* ring_pair_cb; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int dev; int dsaf_ver; } ;


 int AE_IS_VER1 (int ) ;
 int EPROBE_DEFER ;
 size_t HNS_RCB_IRQ_IDX_RX ;
 size_t HNS_RCB_IRQ_IDX_TX ;
 void* RCB_COMM_BASE_TO_RING_BASE (int ,size_t) ;
 int hns_rcb_get_base_irq_idx (struct rcb_common_cb*) ;
 int hns_rcb_get_port_in_comm (struct rcb_common_cb*,size_t) ;
 int hns_rcb_ring_pair_get_cfg (struct ring_pair_cb*) ;
 void* platform_get_irq (struct platform_device*,int) ;
 struct platform_device* to_platform_device (int ) ;

int hns_rcb_get_cfg(struct rcb_common_cb *rcb_common)
{
 struct ring_pair_cb *ring_pair_cb;
 u32 i;
 u32 ring_num = rcb_common->ring_num;
 int base_irq_idx = hns_rcb_get_base_irq_idx(rcb_common);
 struct platform_device *pdev =
  to_platform_device(rcb_common->dsaf_dev->dev);
 bool is_ver1 = AE_IS_VER1(rcb_common->dsaf_dev->dsaf_ver);

 for (i = 0; i < ring_num; i++) {
  ring_pair_cb = &rcb_common->ring_pair_cb[i];
  ring_pair_cb->rcb_common = rcb_common;
  ring_pair_cb->dev = rcb_common->dsaf_dev->dev;
  ring_pair_cb->index = i;
  ring_pair_cb->q.io_base =
   RCB_COMM_BASE_TO_RING_BASE(rcb_common->io_base, i);
  ring_pair_cb->port_id_in_comm =
   hns_rcb_get_port_in_comm(rcb_common, i);
  ring_pair_cb->virq[HNS_RCB_IRQ_IDX_TX] =
  is_ver1 ? platform_get_irq(pdev, base_irq_idx + i * 2) :
     platform_get_irq(pdev, base_irq_idx + i * 3 + 1);
  ring_pair_cb->virq[HNS_RCB_IRQ_IDX_RX] =
  is_ver1 ? platform_get_irq(pdev, base_irq_idx + i * 2 + 1) :
     platform_get_irq(pdev, base_irq_idx + i * 3);
  if ((ring_pair_cb->virq[HNS_RCB_IRQ_IDX_TX] == -EPROBE_DEFER) ||
      (ring_pair_cb->virq[HNS_RCB_IRQ_IDX_RX] == -EPROBE_DEFER))
   return -EPROBE_DEFER;

  ring_pair_cb->q.phy_base =
   RCB_COMM_BASE_TO_RING_BASE(rcb_common->phy_base, i);
  hns_rcb_ring_pair_get_cfg(ring_pair_cb);
 }

 return 0;
}
