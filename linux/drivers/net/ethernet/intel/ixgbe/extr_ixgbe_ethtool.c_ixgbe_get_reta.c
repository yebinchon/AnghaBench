
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ixgbe_adapter {int flags; int* rss_indir_tbl; TYPE_1__* ring_feature; } ;
struct TYPE_2__ {int mask; int indices; } ;


 int IXGBE_FLAG_SRIOV_ENABLED ;
 size_t RING_F_RSS ;
 int ixgbe_rss_indir_tbl_entries (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_get_reta(struct ixgbe_adapter *adapter, u32 *indir)
{
 int i, reta_size = ixgbe_rss_indir_tbl_entries(adapter);
 u16 rss_m = adapter->ring_feature[RING_F_RSS].mask;

 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
  rss_m = adapter->ring_feature[RING_F_RSS].indices - 1;

 for (i = 0; i < reta_size; i++)
  indir[i] = adapter->rss_indir_tbl[i] & rss_m;
}
