
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;



__attribute__((used)) static inline unsigned int core_ticks_to_us(const struct adapter *adapter,
         unsigned int ticks)
{

 return ((ticks * 1000 + adapter->params.vpd.cclk/2) /
  adapter->params.vpd.cclk);
}
