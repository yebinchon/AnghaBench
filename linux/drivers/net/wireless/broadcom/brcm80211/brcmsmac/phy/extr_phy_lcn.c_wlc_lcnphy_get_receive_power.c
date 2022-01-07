
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_phy_lcnphy {int lcnphy_noise_samples; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef scalar_t__ s32 ;


 int* lcnphy_23bitgaincode_table ;
 int wlc_lcnphy_measure_digital_power (struct brcms_phy*,int ) ;
 int wlc_lcnphy_set_rx_gain (struct brcms_phy*,int) ;

__attribute__((used)) static u32 wlc_lcnphy_get_receive_power(struct brcms_phy *pi, s32 *gain_index)
{
 u32 received_power = 0;
 s32 max_index = 0;
 u32 gain_code = 0;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 max_index = 36;
 if (*gain_index >= 0)
  gain_code = lcnphy_23bitgaincode_table[*gain_index];

 if (-1 == *gain_index) {
  *gain_index = 0;
  while ((*gain_index <= (s32) max_index)
         && (received_power < 700)) {
   wlc_lcnphy_set_rx_gain(pi,
            lcnphy_23bitgaincode_table
            [*gain_index]);
   received_power =
    wlc_lcnphy_measure_digital_power(
     pi,
     pi_lcn->
     lcnphy_noise_samples);
   (*gain_index)++;
  }
  (*gain_index)--;
 } else {
  wlc_lcnphy_set_rx_gain(pi, gain_code);
  received_power =
   wlc_lcnphy_measure_digital_power(pi,
        pi_lcn->
        lcnphy_noise_samples);
 }

 return received_power;
}
