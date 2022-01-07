
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lbs_private {int dummy; } ;
struct cmd_header {int dummy; } ;


 int __lbs_cmd_async (struct lbs_private*,int ,struct cmd_header*,int,int ,int ) ;
 int lbs_cmd_async_callback ;

void lbs_cmd_async(struct lbs_private *priv, uint16_t command,
 struct cmd_header *in_cmd, int in_cmd_size)
{
 __lbs_cmd_async(priv, command, in_cmd, in_cmd_size,
  lbs_cmd_async_callback, 0);
}
