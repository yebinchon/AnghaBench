
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int CBD_RESET_REG_PRINCETON_RESET ;
 int IPW_DEBUG_TRACE (char*) ;
 int IPW_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY ;
 int IPW_GP_CNTRL_RW ;
 int IPW_RESET_REG ;
 int IPW_RESET_REG_MASTER_DISABLED ;
 int IPW_RESET_REG_STOP_MASTER ;
 int ipw_clear_bit (struct ipw_priv*,int ,int) ;
 int ipw_set_bit (struct ipw_priv*,int ,int ) ;

__attribute__((used)) static void ipw_start_nic(struct ipw_priv *priv)
{
 IPW_DEBUG_TRACE(">>\n");


 ipw_clear_bit(priv, IPW_RESET_REG,
        IPW_RESET_REG_MASTER_DISABLED |
        IPW_RESET_REG_STOP_MASTER |
        CBD_RESET_REG_PRINCETON_RESET);


 ipw_set_bit(priv, IPW_GP_CNTRL_RW,
      IPW_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY);

 IPW_DEBUG_TRACE("<<\n");
}
