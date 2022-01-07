
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_rx_filter_l2 {int location; } ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_rpf_etht_flr_en_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rpf_etht_flr_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rpf_etht_user_priority_en_set (struct aq_hw_s*,unsigned int,int ) ;

__attribute__((used)) static int hw_atl_b0_hw_fl2_clear(struct aq_hw_s *self,
      struct aq_rx_filter_l2 *data)
{
 hw_atl_rpf_etht_flr_en_set(self, 0U, data->location);
 hw_atl_rpf_etht_flr_set(self, 0U, data->location);
 hw_atl_rpf_etht_user_priority_en_set(self, 0U, data->location);

 return aq_hw_err_from_flags(self);
}
