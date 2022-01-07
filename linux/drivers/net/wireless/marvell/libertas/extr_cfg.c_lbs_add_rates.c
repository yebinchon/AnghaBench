
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int bitrate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* lbs_rates ;

__attribute__((used)) static int lbs_add_rates(u8 *rates)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(lbs_rates); i++) {
  u8 rate = lbs_rates[i].bitrate / 5;
  if (rate == 0x02 || rate == 0x04 ||
      rate == 0x0b || rate == 0x16)
   rate |= 0x80;
  rates[i] = rate;
 }
 return ARRAY_SIZE(lbs_rates);
}
