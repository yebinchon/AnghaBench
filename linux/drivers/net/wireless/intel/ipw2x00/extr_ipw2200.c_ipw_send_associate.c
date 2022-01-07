
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;
struct ipw_associate {int dummy; } ;


 int IPW_CMD_ASSOCIATE ;
 int IPW_ERROR (char*) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_associate*) ;

__attribute__((used)) static int ipw_send_associate(struct ipw_priv *priv,
         struct ipw_associate *associate)
{
 if (!priv || !associate) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_ASSOCIATE, sizeof(*associate),
    associate);
}
