
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rx_ring_info {int dummy; } ;
struct niu {int num_rx_rings; struct rx_ring_info* rx_rings; TYPE_1__* parent; } ;
struct TYPE_2__ {int rxdma_clock_divider; } ;


 int RED_RAN_INIT ;
 int RED_RAN_INIT_OPMODE ;
 int RED_RAN_INIT_VAL ;
 int RX_DMA_CK_DIV ;
 int jiffies_64 ;
 int niu_init_drr_weight (struct niu*) ;
 int niu_init_hostinfo (struct niu*) ;
 int niu_init_one_rx_channel (struct niu*,struct rx_ring_info*) ;
 int niu_init_rdc_groups (struct niu*) ;
 int niu_lock_parent (struct niu*,unsigned long) ;
 int niu_unlock_parent (struct niu*,unsigned long) ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_init_rx_channels(struct niu *np)
{
 unsigned long flags;
 u64 seed = jiffies_64;
 int err, i;

 niu_lock_parent(np, flags);
 nw64(RX_DMA_CK_DIV, np->parent->rxdma_clock_divider);
 nw64(RED_RAN_INIT, RED_RAN_INIT_OPMODE | (seed & RED_RAN_INIT_VAL));
 niu_unlock_parent(np, flags);



 niu_init_rdc_groups(np);
 niu_init_drr_weight(np);

 err = niu_init_hostinfo(np);
 if (err)
  return err;

 for (i = 0; i < np->num_rx_rings; i++) {
  struct rx_ring_info *rp = &np->rx_rings[i];

  err = niu_init_one_rx_channel(np, rp);
  if (err)
   return err;
 }

 return 0;
}
