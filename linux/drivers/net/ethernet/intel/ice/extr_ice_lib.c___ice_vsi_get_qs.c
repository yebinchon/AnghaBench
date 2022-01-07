
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_qs_cfg {int scatter_count; int q_count; int mapping_mode; } ;


 int ICE_VSI_MAP_SCATTER ;
 int __ice_vsi_get_qs_contig (struct ice_qs_cfg*) ;
 int __ice_vsi_get_qs_sc (struct ice_qs_cfg*) ;
 int min_t (int ,int ,int ) ;
 int u16 ;

__attribute__((used)) static int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg)
{
 int ret = 0;

 ret = __ice_vsi_get_qs_contig(qs_cfg);
 if (ret) {

  qs_cfg->mapping_mode = ICE_VSI_MAP_SCATTER;
  qs_cfg->q_count = min_t(u16, qs_cfg->q_count,
     qs_cfg->scatter_count);
  ret = __ice_vsi_get_qs_sc(qs_cfg);
 }
 return ret;
}
