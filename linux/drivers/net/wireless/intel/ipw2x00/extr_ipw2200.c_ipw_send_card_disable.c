
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int u32 ;
struct ipw_priv {int dummy; } ;
typedef int __le32 ;


 int IPW_CMD_CARD_DISABLE ;
 int IPW_ERROR (char*) ;
 int cpu_to_le32 (int ) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,int *) ;

__attribute__((used)) static int ipw_send_card_disable(struct ipw_priv *priv, u32 phy_off)
{
 __le32 v = cpu_to_le32(phy_off);
 if (!priv) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_CARD_DISABLE, sizeof(v), &v);
}
