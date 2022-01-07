
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct bnxt_tpa_idx_map {size_t* agg_id_tbl; int agg_idx_bmap; } ;
struct bnxt_rx_ring_info {struct bnxt_tpa_idx_map* rx_tpa_idx_map; } ;


 int BNXT_AGG_IDX_BMAP_SIZE ;
 size_t MAX_TPA_P5_MASK ;
 int __set_bit (size_t,int ) ;
 size_t find_first_zero_bit (int ,int ) ;
 scalar_t__ test_bit (size_t,int ) ;

__attribute__((used)) static u16 bnxt_alloc_agg_idx(struct bnxt_rx_ring_info *rxr, u16 agg_id)
{
 struct bnxt_tpa_idx_map *map = rxr->rx_tpa_idx_map;
 u16 idx = agg_id & MAX_TPA_P5_MASK;

 if (test_bit(idx, map->agg_idx_bmap))
  idx = find_first_zero_bit(map->agg_idx_bmap,
       BNXT_AGG_IDX_BMAP_SIZE);
 __set_bit(idx, map->agg_idx_bmap);
 map->agg_id_tbl[agg_id] = idx;
 return idx;
}
