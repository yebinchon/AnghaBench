
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int SANYO_NBITS ;
 int bitrev16 (int) ;
 int bitrev8 (int) ;
 int ir_raw_gen_pd (struct ir_raw_event**,unsigned int,int *,int ,int) ;
 int ir_sanyo_timings ;

__attribute__((used)) static int ir_sanyo_encode(enum rc_proto protocol, u32 scancode,
      struct ir_raw_event *events, unsigned int max)
{
 struct ir_raw_event *e = events;
 int ret;
 u64 raw;

 raw = ((u64)(bitrev16(scancode >> 8) & 0xfff8) << (8 + 8 + 13 - 3)) |
       ((u64)(bitrev16(~scancode >> 8) & 0xfff8) << (8 + 8 + 0 - 3)) |
       ((bitrev8(scancode) & 0xff) << 8) |
       (bitrev8(~scancode) & 0xff);

 ret = ir_raw_gen_pd(&e, max, &ir_sanyo_timings, SANYO_NBITS, raw);
 if (ret < 0)
  return ret;

 return e - events;
}
