
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int adapter_t ;
struct TYPE_2__ {int clock_core; } ;


 TYPE_1__* board_info (int const*) ;

__attribute__((used)) static inline unsigned int core_ticks_per_usec(const adapter_t *adap)
{
 return board_info(adap)->clock_core / 1000000;
}
