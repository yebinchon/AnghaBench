
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_ring {int q; } ;


 int RCB_INT_FLAG_RX ;
 int RCB_INT_FLAG_TX ;
 int hns_rcbv2_int_ctrl_hw (int ,int ,int ) ;
 scalar_t__ is_tx_ring (struct hnae_ring*) ;

__attribute__((used)) static void hns_aev2_toggle_ring_irq(struct hnae_ring *ring, u32 mask)
{
 u32 flag;

 if (is_tx_ring(ring))
  flag = RCB_INT_FLAG_TX;
 else
  flag = RCB_INT_FLAG_RX;

 hns_rcbv2_int_ctrl_hw(ring->q, flag, mask);
}
