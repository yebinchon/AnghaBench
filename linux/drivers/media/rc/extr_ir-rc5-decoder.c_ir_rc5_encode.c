
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 unsigned int CHECK_RC5X_NBITS ;
 int EINVAL ;
 unsigned int RC5X_NBITS ;
 int RC5_NBITS ;
 int RC5_SZ_NBITS ;
 int RC_PROTO_RC5 ;
 int RC_PROTO_RC5X_20 ;
 int RC_PROTO_RC5_SZ ;
 int ir_raw_gen_manchester (struct ir_raw_event**,unsigned int,int *,int,int) ;
 int ir_rc5_sz_timings ;
 int ir_rc5_timings ;
 int * ir_rc5x_timings ;

__attribute__((used)) static int ir_rc5_encode(enum rc_proto protocol, u32 scancode,
    struct ir_raw_event *events, unsigned int max)
{
 int ret;
 struct ir_raw_event *e = events;
 unsigned int data, xdata, command, commandx, system, pre_space_data;


 if (protocol == RC_PROTO_RC5) {

  command = (scancode & 0x003f) >> 0;
  commandx = (scancode & 0x0040) >> 6;
  system = (scancode & 0x1f00) >> 8;

  data = !commandx << 12 | system << 6 | command;


  ret = ir_raw_gen_manchester(&e, max, &ir_rc5_timings,
         RC5_NBITS - 1, data);
  if (ret < 0)
   return ret;
 } else if (protocol == RC_PROTO_RC5X_20) {

  xdata = (scancode & 0x00003f) >> 0;
  command = (scancode & 0x003f00) >> 8;
  commandx = !(scancode & 0x004000);
  system = (scancode & 0x1f0000) >> 16;


  data = commandx << 18 | system << 12 | command << 6 | xdata;


  pre_space_data = data >> (RC5X_NBITS - CHECK_RC5X_NBITS);
  ret = ir_raw_gen_manchester(&e, max, &ir_rc5x_timings[0],
         CHECK_RC5X_NBITS - 1,
         pre_space_data);
  if (ret < 0)
   return ret;
  ret = ir_raw_gen_manchester(&e, max - (e - events),
         &ir_rc5x_timings[1],
         RC5X_NBITS - CHECK_RC5X_NBITS,
         data);
  if (ret < 0)
   return ret;
 } else if (protocol == RC_PROTO_RC5_SZ) {


  ret = ir_raw_gen_manchester(&e, max, &ir_rc5_sz_timings,
         RC5_SZ_NBITS - 1,
         scancode & 0x2fff);
  if (ret < 0)
   return ret;
 } else {
  return -EINVAL;
 }

 return e - events;
}
