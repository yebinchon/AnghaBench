
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bttv_ir {int mask_keyup; int last_gpio; int dev; int mask_keycode; } ;
struct bttv {int c; struct bttv_ir* remote; } ;


 int RC_PROTO_UNKNOWN ;
 int bttv_gpio_read (int *) ;
 int dprintk (char*,int,int,char*) ;
 int ir_extract_bits (int,int ) ;
 int rc_keydown_notimeout (int ,int ,int,int ) ;
 int rc_keyup (int ) ;

__attribute__((used)) static void ir_enltv_handle_key(struct bttv *btv)
{
 struct bttv_ir *ir = btv->remote;
 u32 gpio, data, keyup;


 gpio = bttv_gpio_read(&btv->c);


 data = ir_extract_bits(gpio, ir->mask_keycode);


 keyup = (gpio & ir->mask_keyup) ? 1UL << 31 : 0;

 if ((ir->last_gpio & 0x7f) != data) {
  dprintk("gpio=0x%x code=%d | %s\n",
   gpio, data,
   (gpio & ir->mask_keyup) ? " up" : "up/down");

  rc_keydown_notimeout(ir->dev, RC_PROTO_UNKNOWN, data, 0);
  if (keyup)
   rc_keyup(ir->dev);
 } else {
  if ((ir->last_gpio & 1UL << 31) == keyup)
   return;

  dprintk("(cnt) gpio=0x%x code=%d | %s\n",
   gpio, data,
   (gpio & ir->mask_keyup) ? " up" : "down");

  if (keyup)
   rc_keyup(ir->dev);
  else
   rc_keydown_notimeout(ir->dev, RC_PROTO_UNKNOWN, data,
          0);
 }

 ir->last_gpio = data | keyup;
}
