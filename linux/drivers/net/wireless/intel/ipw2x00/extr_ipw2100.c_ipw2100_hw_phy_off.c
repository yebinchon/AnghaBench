
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int net_dev; } ;
struct host_command {int host_command_length; int host_command_sequence; int host_command; } ;


 int CARD_DISABLE_PHY_OFF ;
 int EIO ;
 int HW_PHY_OFF_LOOP_DELAY ;
 int IPW2100_COMMAND ;
 int IPW2100_COMMAND_PHY_OFF ;
 int IPW2100_CONTROL_PHY_OFF ;
 int IPW2100_CONTROL_REG ;
 int IPW_DEBUG_HC (char*) ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;
 int read_nic_dword (int ,int ,int*) ;
 int schedule_timeout_uninterruptible (int ) ;

__attribute__((used)) static int ipw2100_hw_phy_off(struct ipw2100_priv *priv)
{



 struct host_command cmd = {
  .host_command = CARD_DISABLE_PHY_OFF,
  .host_command_sequence = 0,
  .host_command_length = 0,
 };
 int err, i;
 u32 val1, val2;

 IPW_DEBUG_HC("CARD_DISABLE_PHY_OFF\n");


 err = ipw2100_hw_send_command(priv, &cmd);
 if (err)
  return err;

 for (i = 0; i < 2500; i++) {
  read_nic_dword(priv->net_dev, IPW2100_CONTROL_REG, &val1);
  read_nic_dword(priv->net_dev, IPW2100_COMMAND, &val2);

  if ((val1 & IPW2100_CONTROL_PHY_OFF) &&
      (val2 & IPW2100_COMMAND_PHY_OFF))
   return 0;

  schedule_timeout_uninterruptible((msecs_to_jiffies(50)));
 }

 return -EIO;
}
