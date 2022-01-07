
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int MCIR2_HEADER_NBITS ;
 scalar_t__ MCIR2_KEYBOARD_HEADER ;
 int MCIR2_KEYBOARD_NBITS ;
 scalar_t__ MCIR2_MOUSE_HEADER ;
 int MCIR2_MOUSE_NBITS ;
 int RC_PROTO_MCIR2_KBD ;
 int ir_mce_kbd_timings ;
 int ir_raw_gen_manchester (struct ir_raw_event**,unsigned int,int *,int,int) ;

__attribute__((used)) static int ir_mce_kbd_encode(enum rc_proto protocol, u32 scancode,
        struct ir_raw_event *events, unsigned int max)
{
 struct ir_raw_event *e = events;
 int len, ret;
 u64 raw;

 if (protocol == RC_PROTO_MCIR2_KBD) {
  raw = scancode |
        ((u64)MCIR2_KEYBOARD_HEADER << MCIR2_KEYBOARD_NBITS);
  len = MCIR2_KEYBOARD_NBITS + MCIR2_HEADER_NBITS;
 } else {
  raw = scancode |
        ((u64)MCIR2_MOUSE_HEADER << MCIR2_MOUSE_NBITS);
  len = MCIR2_MOUSE_NBITS + MCIR2_HEADER_NBITS;
 }

 ret = ir_raw_gen_manchester(&e, max, &ir_mce_kbd_timings, len, raw);
 if (ret < 0)
  return ret;

 return e - events;
}
