
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_queue {int dummy; } ;


 int hns_rcb_ring_enable_hw (struct hnae_queue*,int ) ;

void hns_rcb_start(struct hnae_queue *q, u32 val)
{
 hns_rcb_ring_enable_hw(q, val);
}
