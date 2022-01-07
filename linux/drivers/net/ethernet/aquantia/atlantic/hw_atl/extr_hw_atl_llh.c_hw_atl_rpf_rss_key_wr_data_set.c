
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_RSS_KEY_WR_DATA_ADR ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_rpf_rss_key_wr_data_set(struct aq_hw_s *aq_hw, u32 rss_key_wr_data)
{
 aq_hw_write_reg(aq_hw, HW_ATL_RPF_RSS_KEY_WR_DATA_ADR,
   rss_key_wr_data);
}
