
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt_tpa_idx_map {int agg_idx_bmap; } ;
struct bnxt_rx_ring_info {struct bnxt_tpa_idx_map* rx_tpa_idx_map; } ;


 int __clear_bit (int ,int ) ;

__attribute__((used)) static void bnxt_free_agg_idx(struct bnxt_rx_ring_info *rxr, u16 idx)
{
 struct bnxt_tpa_idx_map *map = rxr->rx_tpa_idx_map;

 __clear_bit(idx, map->agg_idx_bmap);
}
