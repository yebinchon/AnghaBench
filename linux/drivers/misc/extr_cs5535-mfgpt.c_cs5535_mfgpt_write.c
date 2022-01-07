
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct cs5535_mfgpt_timer {int nr; TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int outw (scalar_t__,scalar_t__) ;

void cs5535_mfgpt_write(struct cs5535_mfgpt_timer *timer, uint16_t reg,
  uint16_t value)
{
 outw(value, timer->chip->base + reg + (timer->nr * 8));
}
