
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;
struct il_led_cmd {int dummy; } ;
struct il_host_cmd {int len; int * callback; int flags; struct il_led_cmd* data; int id; } ;


 int CMD_ASYNC ;
 int C_LEDS ;
 int il_send_cmd (struct il_priv*,struct il_host_cmd*) ;

__attribute__((used)) static int
il3945_send_led_cmd(struct il_priv *il, struct il_led_cmd *led_cmd)
{
 struct il_host_cmd cmd = {
  .id = C_LEDS,
  .len = sizeof(struct il_led_cmd),
  .data = led_cmd,
  .flags = CMD_ASYNC,
  .callback = ((void*)0),
 };

 return il_send_cmd(il, &cmd);
}
