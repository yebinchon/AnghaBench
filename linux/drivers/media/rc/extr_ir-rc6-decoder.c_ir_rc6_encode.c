
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int EINVAL ;
 int RC6_0_NBITS ;
 int RC6_HEADER_NBITS ;
 int RC_PROTO_RC6_0 ;




 int ir_raw_gen_manchester (struct ir_raw_event**,unsigned int,int *,int,int) ;
 int * ir_rc6_timings ;

__attribute__((used)) static int ir_rc6_encode(enum rc_proto protocol, u32 scancode,
    struct ir_raw_event *events, unsigned int max)
{
 int ret;
 struct ir_raw_event *e = events;

 if (protocol == RC_PROTO_RC6_0) {

  ret = ir_raw_gen_manchester(&e, max - (e - events),
         &ir_rc6_timings[0],
         RC6_HEADER_NBITS, (1 << 3));
  if (ret < 0)
   return ret;


  ret = ir_raw_gen_manchester(&e, max - (e - events),
         &ir_rc6_timings[1], 1, 0);
  if (ret < 0)
   return ret;


  ret = ir_raw_gen_manchester(&e, max - (e - events),
         &ir_rc6_timings[2], RC6_0_NBITS,
         scancode);
  if (ret < 0)
   return ret;

 } else {
  int bits;

  switch (protocol) {
  case 128:
  case 129:
   bits = 32;
   break;
  case 130:
   bits = 24;
   break;
  case 131:
   bits = 20;
   break;
  default:
   return -EINVAL;
  }


  ret = ir_raw_gen_manchester(&e, max - (e - events),
         &ir_rc6_timings[0],
         RC6_HEADER_NBITS, (1 << 3 | 6));
  if (ret < 0)
   return ret;


  ret = ir_raw_gen_manchester(&e, max - (e - events),
         &ir_rc6_timings[1], 1, 0);
  if (ret < 0)
   return ret;


  ret = ir_raw_gen_manchester(&e, max - (e - events),
         &ir_rc6_timings[2],
         bits,
         scancode);
  if (ret < 0)
   return ret;
 }

 return e - events;
}
