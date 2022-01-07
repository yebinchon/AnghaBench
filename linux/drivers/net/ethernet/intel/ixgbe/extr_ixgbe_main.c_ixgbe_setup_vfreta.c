
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int num_rx_pools; int* rss_indir_tbl; int * rss_key; TYPE_1__* ring_feature; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int indices; } ;


 int IXGBE_PFVFRSSRK (int,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 size_t RING_F_RSS ;
 int VMDQ_P (int) ;
 int ixgbe_store_vfreta (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
 int i, j;


 for (i = 0; i < 10; i++) {
  u16 pool = adapter->num_rx_pools;

  while (pool--)
   IXGBE_WRITE_REG(hw,
     IXGBE_PFVFRSSRK(i, VMDQ_P(pool)),
     *(adapter->rss_key + i));
 }


 for (i = 0, j = 0; i < 64; i++, j++) {
  if (j == rss_i)
   j = 0;

  adapter->rss_indir_tbl[i] = j;
 }

 ixgbe_store_vfreta(adapter);
}
