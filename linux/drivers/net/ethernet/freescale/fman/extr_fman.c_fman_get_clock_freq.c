
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct fman {TYPE_1__* state; } ;
struct TYPE_2__ {int fm_clk_freq; } ;



u16 fman_get_clock_freq(struct fman *fman)
{
 return fman->state->fm_clk_freq;
}
