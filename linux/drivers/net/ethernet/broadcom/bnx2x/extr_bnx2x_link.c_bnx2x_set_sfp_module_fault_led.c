
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 int DP (int ,char*,int ) ;
 int NETIF_MSG_LINK ;
 int bnx2x_set_e1e2_module_fault_led (struct link_params*,int ) ;
 int bnx2x_set_e3_module_fault_led (struct link_params*,int ) ;

__attribute__((used)) static void bnx2x_set_sfp_module_fault_led(struct link_params *params,
        u8 gpio_mode)
{
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "Setting SFP+ module fault LED to %d\n", gpio_mode);
 if (CHIP_IS_E3(bp)) {



  bnx2x_set_e3_module_fault_led(params, gpio_mode);
 } else
  bnx2x_set_e1e2_module_fault_led(params, gpio_mode);
}
