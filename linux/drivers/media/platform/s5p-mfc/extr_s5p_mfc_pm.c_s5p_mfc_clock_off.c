
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock_gate; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int clk_disable (int ) ;
 int clk_ref ;
 int mfc_debug (int,char*,int ) ;
 TYPE_1__* pm ;

void s5p_mfc_clock_off(void)
{
 atomic_dec(&clk_ref);
 mfc_debug(3, "- %d\n", atomic_read(&clk_ref));

 clk_disable(pm->clock_gate);
}
