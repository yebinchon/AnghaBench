
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int SHARP_NBITS ;
 int bitrev8 (int) ;
 int ir_raw_gen_pd (struct ir_raw_event**,unsigned int,int *,int ,int) ;
 int ir_sharp_timings ;

__attribute__((used)) static int ir_sharp_encode(enum rc_proto protocol, u32 scancode,
      struct ir_raw_event *events, unsigned int max)
{
 struct ir_raw_event *e = events;
 int ret;
 u32 raw;

 raw = (((bitrev8(scancode >> 8) >> 3) << 8) & 0x1f00) |
  bitrev8(scancode);
 ret = ir_raw_gen_pd(&e, max, &ir_sharp_timings, SHARP_NBITS,
       (raw << 2) | 2);
 if (ret < 0)
  return ret;

 max -= ret;

 raw = (((bitrev8(scancode >> 8) >> 3) << 8) & 0x1f00) |
  bitrev8(~scancode);
 ret = ir_raw_gen_pd(&e, max, &ir_sharp_timings, SHARP_NBITS,
       (raw << 2) | 1);
 if (ret < 0)
  return ret;

 return e - events;
}
