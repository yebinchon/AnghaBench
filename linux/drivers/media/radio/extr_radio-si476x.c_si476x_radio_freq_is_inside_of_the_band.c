
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ rangelow; scalar_t__ rangehigh; } ;


 TYPE_1__* si476x_bands ;

__attribute__((used)) static inline bool si476x_radio_freq_is_inside_of_the_band(u32 freq, int band)
{
 return freq >= si476x_bands[band].rangelow &&
  freq <= si476x_bands[band].rangehigh;
}
