
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int AQ_NIC_FC_RX ;
 int hw_atl_rpb_rx_xoff_en_per_tc_set (struct aq_hw_s*,int,int) ;

__attribute__((used)) static int hw_atl_b0_set_fc(struct aq_hw_s *self, u32 fc, u32 tc)
{
 hw_atl_rpb_rx_xoff_en_per_tc_set(self, !!(fc & AQ_NIC_FC_RX), tc);
 return 0;
}
