
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int IPW_BIT_INT_HOST_SRAM_READ_INT_REGISTER ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_DEBUG_TRACE (char*) ;
 int IPW_GP_CNTRL_BIT_CLOCK_READY ;
 int IPW_GP_CNTRL_BIT_INIT_DONE ;
 int IPW_GP_CNTRL_RW ;
 int IPW_READ_INT_REGISTER ;
 int IPW_RESET_REG ;
 int IPW_RESET_REG_SW_RESET ;
 int ipw_poll_bit (struct ipw_priv*,int ,int ,int) ;
 int ipw_set_bit (struct ipw_priv*,int ,int ) ;
 int ipw_write32 (struct ipw_priv*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ipw_init_nic(struct ipw_priv *priv)
{
 int rc;

 IPW_DEBUG_TRACE(">>\n");



 ipw_set_bit(priv, IPW_GP_CNTRL_RW, IPW_GP_CNTRL_BIT_INIT_DONE);


 ipw_write32(priv, IPW_READ_INT_REGISTER,
      IPW_BIT_INT_HOST_SRAM_READ_INT_REGISTER);


 rc = ipw_poll_bit(priv, IPW_GP_CNTRL_RW,
     IPW_GP_CNTRL_BIT_CLOCK_READY, 250);
 if (rc < 0)
  IPW_DEBUG_INFO("FAILED wait for clock stablization\n");


 ipw_set_bit(priv, IPW_RESET_REG, IPW_RESET_REG_SW_RESET);

 udelay(10);


 ipw_set_bit(priv, IPW_GP_CNTRL_RW, IPW_GP_CNTRL_BIT_INIT_DONE);

 IPW_DEBUG_TRACE(">>\n");
 return 0;
}
