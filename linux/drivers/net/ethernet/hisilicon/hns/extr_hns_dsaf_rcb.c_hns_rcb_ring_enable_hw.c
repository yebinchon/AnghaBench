
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_queue {int dummy; } ;


 int RCB_RING_PREFETCH_EN_REG ;
 int dsaf_write_dev (struct hnae_queue*,int ,int) ;

void hns_rcb_ring_enable_hw(struct hnae_queue *q, u32 val)
{
 dsaf_write_dev(q, RCB_RING_PREFETCH_EN_REG, !!val);
}
