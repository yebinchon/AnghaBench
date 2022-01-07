
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct streamzap_ir {int sum; } ;
struct ir_raw_event {int pulse; int duration; } ;


 int SZ_RESOLUTION ;
 int US_TO_NS (int) ;
 int sz_push (struct streamzap_ir*,struct ir_raw_event) ;

__attribute__((used)) static void sz_push_full_space(struct streamzap_ir *sz,
          unsigned char value)
{
 struct ir_raw_event rawir = {};

 rawir.pulse = 0;
 rawir.duration = ((int) value) * SZ_RESOLUTION;
 rawir.duration += SZ_RESOLUTION / 2;
 sz->sum += rawir.duration;
 rawir.duration = US_TO_NS(rawir.duration);
 sz_push(sz, rawir);
}
