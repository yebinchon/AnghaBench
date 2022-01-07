
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int JVC_NBITS ;
 int bitrev8 (int) ;
 int ir_jvc_timings ;
 int ir_raw_gen_pd (struct ir_raw_event**,unsigned int,int *,int ,int) ;

__attribute__((used)) static int ir_jvc_encode(enum rc_proto protocol, u32 scancode,
    struct ir_raw_event *events, unsigned int max)
{
 struct ir_raw_event *e = events;
 int ret;
 u32 raw = (bitrev8((scancode >> 8) & 0xff) << 8) |
    (bitrev8((scancode >> 0) & 0xff) << 0);

 ret = ir_raw_gen_pd(&e, max, &ir_jvc_timings, JVC_NBITS, raw);
 if (ret < 0)
  return ret;

 return e - events;
}
