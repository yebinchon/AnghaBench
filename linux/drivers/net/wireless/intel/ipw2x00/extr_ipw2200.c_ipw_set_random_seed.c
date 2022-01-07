
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u32 ;
struct ipw_priv {int dummy; } ;


 int IPW_CMD_SEED_NUMBER ;
 int IPW_ERROR (char*) ;
 int get_random_bytes (int *,int) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,int *) ;

__attribute__((used)) static int ipw_set_random_seed(struct ipw_priv *priv)
{
 u32 val;

 if (!priv) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 get_random_bytes(&val, sizeof(val));

 return ipw_send_cmd_pdu(priv, IPW_CMD_SEED_NUMBER, sizeof(val), &val);
}
