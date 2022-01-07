
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_priv {unsigned long blink_on; unsigned long blink_off; TYPE_2__* ops; TYPE_1__* cfg; int status; } ;
struct il_led_cmd {void* off; void* on; int interval; int id; } ;
struct TYPE_4__ {int (* send_led_cmd ) (struct il_priv*,struct il_led_cmd*) ;} ;
struct TYPE_3__ {int led_compensation; } ;


 int D_LED (char*,int ) ;
 int EBUSY ;
 int IL_DEF_LED_INTRVL ;
 int IL_LED_LINK ;
 unsigned long IL_LED_SOLID ;
 int S_READY ;
 void* il_blink_compensation (struct il_priv*,unsigned long,int ) ;
 int stub1 (struct il_priv*,struct il_led_cmd*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
il_led_cmd(struct il_priv *il, unsigned long on, unsigned long off)
{
 struct il_led_cmd led_cmd = {
  .id = IL_LED_LINK,
  .interval = IL_DEF_LED_INTRVL
 };
 int ret;

 if (!test_bit(S_READY, &il->status))
  return -EBUSY;

 if (il->blink_on == on && il->blink_off == off)
  return 0;

 if (off == 0) {

  on = IL_LED_SOLID;
 }

 D_LED("Led blink time compensation=%u\n",
       il->cfg->led_compensation);
 led_cmd.on =
     il_blink_compensation(il, on,
      il->cfg->led_compensation);
 led_cmd.off =
     il_blink_compensation(il, off,
      il->cfg->led_compensation);

 ret = il->ops->send_led_cmd(il, &led_cmd);
 if (!ret) {
  il->blink_on = on;
  il->blink_off = off;
 }
 return ret;
}
