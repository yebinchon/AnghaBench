
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ixgbe_adapter {int flags; int* rss_indir_tbl; TYPE_1__* ring_feature; } ;
struct TYPE_2__ {int indices; } ;


 int IXGBE_FLAG_SRIOV_ENABLED ;
 size_t RING_F_RSS ;
 int ixgbe_rss_indir_tbl_entries (struct ixgbe_adapter*) ;
 int ixgbe_store_key (struct ixgbe_adapter*) ;
 int ixgbe_store_reta (struct ixgbe_adapter*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
{
 u32 i, j;
 u32 reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;





 if ((adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) && (rss_i < 4))
  rss_i = 4;


 ixgbe_store_key(adapter);


 memset(adapter->rss_indir_tbl, 0, sizeof(adapter->rss_indir_tbl));

 for (i = 0, j = 0; i < reta_entries; i++, j++) {
  if (j == rss_i)
   j = 0;

  adapter->rss_indir_tbl[i] = j;
 }

 ixgbe_store_reta(adapter);
}
