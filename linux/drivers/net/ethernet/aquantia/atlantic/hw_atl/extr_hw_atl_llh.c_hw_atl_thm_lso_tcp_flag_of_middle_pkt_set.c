
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_THM_LSO_TCP_FLAG_MID_ADR ;
 int HW_ATL_THM_LSO_TCP_FLAG_MID_MSK ;
 int HW_ATL_THM_LSO_TCP_FLAG_MID_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(struct aq_hw_s *aq_hw,
            u32 lso_tcp_flag_of_middle_pkt)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_THM_LSO_TCP_FLAG_MID_ADR,
       HW_ATL_THM_LSO_TCP_FLAG_MID_MSK,
       HW_ATL_THM_LSO_TCP_FLAG_MID_SHIFT,
       lso_tcp_flag_of_middle_pkt);
}
