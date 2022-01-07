
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int bssid; } ;
struct host_command {int host_command_parameters; int host_command_length; int host_command_sequence; int host_command; } ;


 int DISASSOCIATION_BSSID ;
 int ETH_ALEN ;
 int IPW_DEBUG_HC (char*) ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ipw2100_disassociate_bssid(struct ipw2100_priv *priv)
{
 struct host_command cmd = {
  .host_command = DISASSOCIATION_BSSID,
  .host_command_sequence = 0,
  .host_command_length = ETH_ALEN
 };
 int err;

 IPW_DEBUG_HC("DISASSOCIATION_BSSID\n");





 memcpy(cmd.host_command_parameters, priv->bssid, ETH_ALEN);

 err = ipw2100_hw_send_command(priv, &cmd);

 return err;
}
