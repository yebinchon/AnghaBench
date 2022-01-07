
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int IPW_CMD_SCAN_ABORT ;
 int IPW_ERROR (char*) ;
 int ipw_send_cmd_simple (struct ipw_priv*,int ) ;

__attribute__((used)) static int ipw_send_scan_abort(struct ipw_priv *priv)
{
 if (!priv) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_simple(priv, IPW_CMD_SCAN_ABORT);
}
