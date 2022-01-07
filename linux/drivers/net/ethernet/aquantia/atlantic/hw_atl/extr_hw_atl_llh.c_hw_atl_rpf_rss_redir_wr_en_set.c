
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_RSS_REDIR_WR_ENI_ADR ;
 int HW_ATL_RPF_RSS_REDIR_WR_ENI_MSK ;
 int HW_ATL_RPF_RSS_REDIR_WR_ENI_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_rss_redir_wr_en_set(struct aq_hw_s *aq_hw, u32 rss_redir_wr_en)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_RSS_REDIR_WR_ENI_ADR,
       HW_ATL_RPF_RSS_REDIR_WR_ENI_MSK,
       HW_ATL_RPF_RSS_REDIR_WR_ENI_SHIFT, rss_redir_wr_en);
}
