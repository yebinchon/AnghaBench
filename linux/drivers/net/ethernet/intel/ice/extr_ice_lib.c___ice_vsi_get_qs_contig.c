
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_qs_cfg {int pf_map_size; int q_count; int* vsi_map; int vsi_map_offset; int qs_mutex; int pf_map; } ;


 int ENOMEM ;
 int bitmap_find_next_zero_area (int ,int,int ,int,int ) ;
 int bitmap_set (int ,int,int) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

__attribute__((used)) static int __ice_vsi_get_qs_contig(struct ice_qs_cfg *qs_cfg)
{
 int offset, i;

 mutex_lock(qs_cfg->qs_mutex);
 offset = bitmap_find_next_zero_area(qs_cfg->pf_map, qs_cfg->pf_map_size,
         0, qs_cfg->q_count, 0);
 if (offset >= qs_cfg->pf_map_size) {
  mutex_unlock(qs_cfg->qs_mutex);
  return -ENOMEM;
 }

 bitmap_set(qs_cfg->pf_map, offset, qs_cfg->q_count);
 for (i = 0; i < qs_cfg->q_count; i++)
  qs_cfg->vsi_map[i + qs_cfg->vsi_map_offset] = i + offset;
 mutex_unlock(qs_cfg->qs_mutex);

 return 0;
}
