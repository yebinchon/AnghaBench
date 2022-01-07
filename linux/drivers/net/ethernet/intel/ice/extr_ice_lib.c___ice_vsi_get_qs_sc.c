
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_qs_cfg {int q_count; int pf_map_size; int* vsi_map; int vsi_map_offset; int qs_mutex; int pf_map; } ;


 int ENOMEM ;
 int clear_bit (int,int ) ;
 int find_next_zero_bit (int ,int,int) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int __ice_vsi_get_qs_sc(struct ice_qs_cfg *qs_cfg)
{
 int i, index = 0;

 mutex_lock(qs_cfg->qs_mutex);
 for (i = 0; i < qs_cfg->q_count; i++) {
  index = find_next_zero_bit(qs_cfg->pf_map,
        qs_cfg->pf_map_size, index);
  if (index >= qs_cfg->pf_map_size)
   goto err_scatter;
  set_bit(index, qs_cfg->pf_map);
  qs_cfg->vsi_map[i + qs_cfg->vsi_map_offset] = index;
 }
 mutex_unlock(qs_cfg->qs_mutex);

 return 0;
err_scatter:
 for (index = 0; index < i; index++) {
  clear_bit(qs_cfg->vsi_map[index], qs_cfg->pf_map);
  qs_cfg->vsi_map[index + qs_cfg->vsi_map_offset] = 0;
 }
 mutex_unlock(qs_cfg->qs_mutex);

 return -ENOMEM;
}
