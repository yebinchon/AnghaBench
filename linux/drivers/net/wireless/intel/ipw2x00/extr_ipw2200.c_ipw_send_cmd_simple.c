
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {int dummy; } ;
struct host_cmd {int cmd; } ;


 int __ipw_send_cmd (struct ipw_priv*,struct host_cmd*) ;

__attribute__((used)) static int ipw_send_cmd_simple(struct ipw_priv *priv, u8 command)
{
 struct host_cmd cmd = {
  .cmd = command,
 };

 return __ipw_send_cmd(priv, &cmd);
}
