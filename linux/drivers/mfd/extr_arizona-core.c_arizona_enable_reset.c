
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reset; } ;
struct arizona {TYPE_1__ pdata; } ;


 int gpiod_set_raw_value_cansleep (scalar_t__,int ) ;

__attribute__((used)) static inline void arizona_enable_reset(struct arizona *arizona)
{
 if (arizona->pdata.reset)
  gpiod_set_raw_value_cansleep(arizona->pdata.reset, 0);
}
