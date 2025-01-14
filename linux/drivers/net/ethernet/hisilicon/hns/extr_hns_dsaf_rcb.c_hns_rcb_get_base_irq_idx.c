
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcb_common_cb {TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int dsaf_ver; } ;


 int AE_IS_VER1 (int ) ;
 int HNS_DEBUG_RING_IRQ_IDX ;
 int HNS_DSAF_IS_DEBUG (TYPE_1__*) ;
 int SERVICE_RING_IRQ_IDX (int) ;

__attribute__((used)) static int hns_rcb_get_base_irq_idx(struct rcb_common_cb *rcb_common)
{
 bool is_ver1 = AE_IS_VER1(rcb_common->dsaf_dev->dsaf_ver);

 if (!HNS_DSAF_IS_DEBUG(rcb_common->dsaf_dev))
  return SERVICE_RING_IRQ_IDX(is_ver1);
 else
  return HNS_DEBUG_RING_IRQ_IDX;
}
