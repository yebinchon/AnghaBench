
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ipw_priv {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int name; } ;


 int ETH_ALEN ;
 int IPW_CMD_ADAPTER_ADDRESS ;
 int IPW_DEBUG_INFO (char*,int ,int *) ;
 int IPW_ERROR (char*) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int ,int *) ;

__attribute__((used)) static int ipw_send_adapter_address(struct ipw_priv *priv, u8 * mac)
{
 if (!priv || !mac) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 IPW_DEBUG_INFO("%s: Setting MAC to %pM\n",
         priv->net_dev->name, mac);

 return ipw_send_cmd_pdu(priv, IPW_CMD_ADAPTER_ADDRESS, ETH_ALEN, mac);
}
