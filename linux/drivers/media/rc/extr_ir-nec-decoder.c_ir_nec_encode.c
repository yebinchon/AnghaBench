
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int NEC_NBITS ;
 int ir_nec_scancode_to_raw (int,int ) ;
 int ir_nec_timings ;
 int ir_raw_gen_pd (struct ir_raw_event**,unsigned int,int *,int ,int ) ;

__attribute__((used)) static int ir_nec_encode(enum rc_proto protocol, u32 scancode,
    struct ir_raw_event *events, unsigned int max)
{
 struct ir_raw_event *e = events;
 int ret;
 u32 raw;


 raw = ir_nec_scancode_to_raw(protocol, scancode);


 ret = ir_raw_gen_pd(&e, max, &ir_nec_timings, NEC_NBITS, raw);
 if (ret < 0)
  return ret;

 return e - events;
}
