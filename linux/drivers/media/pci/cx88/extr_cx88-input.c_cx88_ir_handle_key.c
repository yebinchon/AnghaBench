
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cx88_core {int boardnr; } ;
struct cx88_IR {int last_gpio; int mask_keydown; int mask_keyup; int dev; struct cx88_core* core; scalar_t__ polling; int mask_keycode; int gpio_addr; } ;


 scalar_t__ CX88_BOARD_NORWOOD_MICRO ;

 scalar_t__ CX88_BOARD_PIXELVIEW_PLAYTV_ULTRA_PRO ;
 scalar_t__ CX88_BOARD_PROLINK_PLAYTVPVR ;







 int MO_GP0_IO ;
 int MO_GP1_IO ;
 int RC_PROTO_NECX ;
 int RC_PROTO_UNKNOWN ;
 int RC_SCANCODE_NECX (int,int) ;
 int cx_read (int ) ;
 int ir_dprintk (char*,int,int,char*,char*,char*) ;
 int ir_extract_bits (int,int ) ;
 int rc_keydown (int ,int ,int,int ) ;
 int rc_keydown_notimeout (int ,int ,int,int ) ;
 int rc_keyup (int ) ;

__attribute__((used)) static void cx88_ir_handle_key(struct cx88_IR *ir)
{
 struct cx88_core *core = ir->core;
 u32 gpio, data, auxgpio;


 gpio = cx_read(ir->gpio_addr);
 switch (core->boardnr) {
 case 135:
  auxgpio = cx_read(MO_GP1_IO);

  gpio = (gpio & 0x7fd) + (auxgpio & 0xef);
  break;
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  gpio = (gpio & 0x6ff) | ((cx_read(MO_GP1_IO) << 8) & 0x900);
  auxgpio = gpio;
  break;
 default:
  auxgpio = gpio;
 }
 if (ir->polling) {
  if (ir->last_gpio == auxgpio)
   return;
  ir->last_gpio = auxgpio;
 }


 data = ir_extract_bits(gpio, ir->mask_keycode);
 ir_dprintk("irq gpio=0x%x code=%d | %s%s%s\n",
     gpio, data,
     ir->polling ? "poll" : "irq",
     (gpio & ir->mask_keydown) ? " down" : "",
     (gpio & ir->mask_keyup) ? " up" : "");

 if (ir->core->boardnr == CX88_BOARD_NORWOOD_MICRO) {
  u32 gpio_key = cx_read(MO_GP0_IO);

  data = (data << 4) | ((gpio_key & 0xf0) >> 4);

  rc_keydown(ir->dev, RC_PROTO_UNKNOWN, data, 0);

 } else if (ir->core->boardnr == CX88_BOARD_PROLINK_PLAYTVPVR ||
     ir->core->boardnr == CX88_BOARD_PIXELVIEW_PLAYTV_ULTRA_PRO) {

  u16 addr;
  u8 cmd;
  u32 scancode;

  addr = (data >> 8) & 0xffff;
  cmd = (data >> 0) & 0x00ff;
  scancode = RC_SCANCODE_NECX(addr, cmd);

  if (0 == (gpio & ir->mask_keyup))
   rc_keydown_notimeout(ir->dev, RC_PROTO_NECX, scancode,
          0);
  else
   rc_keyup(ir->dev);

 } else if (ir->mask_keydown) {

  if (gpio & ir->mask_keydown)
   rc_keydown_notimeout(ir->dev, RC_PROTO_UNKNOWN, data,
          0);
  else
   rc_keyup(ir->dev);

 } else if (ir->mask_keyup) {

  if (0 == (gpio & ir->mask_keyup))
   rc_keydown_notimeout(ir->dev, RC_PROTO_UNKNOWN, data,
          0);
  else
   rc_keyup(ir->dev);

 } else {

  rc_keydown_notimeout(ir->dev, RC_PROTO_UNKNOWN, data, 0);
  rc_keyup(ir->dev);
 }
}
