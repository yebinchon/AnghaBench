
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct bnxt_tpa_idx_map {size_t* agg_id_tbl; } ;
struct bnxt_rx_ring_info {struct bnxt_tpa_idx_map* rx_tpa_idx_map; } ;



__attribute__((used)) static u16 bnxt_lookup_agg_idx(struct bnxt_rx_ring_info *rxr, u16 agg_id)
{
 struct bnxt_tpa_idx_map *map = rxr->rx_tpa_idx_map;

 return map->agg_id_tbl[agg_id];
}
