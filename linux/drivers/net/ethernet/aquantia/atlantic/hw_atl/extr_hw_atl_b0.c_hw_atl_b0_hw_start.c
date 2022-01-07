
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {int dummy; } ;


 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_rpb_rx_buff_en_set (struct aq_hw_s*,int) ;
 int hw_atl_tpb_tx_buff_en_set (struct aq_hw_s*,int) ;

__attribute__((used)) static int hw_atl_b0_hw_start(struct aq_hw_s *self)
{
 hw_atl_tpb_tx_buff_en_set(self, 1);
 hw_atl_rpb_rx_buff_en_set(self, 1);
 return aq_hw_err_from_flags(self);
}
