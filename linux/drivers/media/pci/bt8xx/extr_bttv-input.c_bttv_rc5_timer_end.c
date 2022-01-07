
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct timer_list {int dummy; } ;
struct bttv_ir {int active; int last_bit; int code; int shift_by; int dev; int base_time; } ;
typedef int ktime_t ;


 int RC5_ADDR (int) ;
 int RC5_INSTR (int) ;
 int RC5_START (int) ;
 int RC5_TOGGLE (int) ;
 int RC_PROTO_RC5 ;
 int RC_SCANCODE_RC5 (int,int) ;
 int USEC_PER_SEC ;
 int bttv_rc5_decode (int) ;
 int dprintk (char*,...) ;
 struct bttv_ir* from_timer (int ,struct timer_list*,int ) ;
 struct bttv_ir* ir ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int rc_keydown (int ,int ,int,int) ;
 int timer ;

__attribute__((used)) static void bttv_rc5_timer_end(struct timer_list *t)
{
 struct bttv_ir *ir = from_timer(ir, t, timer);
 ktime_t tv;
 u32 gap, rc5, scancode;
 u8 toggle, command, system;


 tv = ktime_get();

 gap = ktime_to_us(ktime_sub(tv, ir->base_time));

 if (gap > USEC_PER_SEC) {
  gap = 200000;
 }

 ir->active = 0;


 if (gap < 28000) {
  dprintk("spurious timer_end\n");
  return;
 }

 if (ir->last_bit < 20) {

  dprintk("short code: %x\n", ir->code);
  return;
 }

 ir->code = (ir->code << ir->shift_by) | 1;
 rc5 = bttv_rc5_decode(ir->code);

 toggle = RC5_TOGGLE(rc5);
 system = RC5_ADDR(rc5);
 command = RC5_INSTR(rc5);

 switch (RC5_START(rc5)) {
 case 0x3:
  break;
 case 0x2:
  command += 0x40;
  break;
 default:
  return;
 }

 scancode = RC_SCANCODE_RC5(system, command);
 rc_keydown(ir->dev, RC_PROTO_RC5, scancode, toggle);
 dprintk("scancode %x, toggle %x\n", scancode, toggle);
}
