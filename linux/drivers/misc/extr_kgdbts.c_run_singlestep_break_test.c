
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int tst; } ;


 int init_simple_test () ;
 int kgdb_breakpoint () ;
 int kgdbts_break_test () ;
 int singlestep_break_test ;
 TYPE_1__ ts ;

__attribute__((used)) static void run_singlestep_break_test(void)
{
 init_simple_test();
 ts.tst = singlestep_break_test;
 ts.name = "singlestep_breakpoint_test";

 kgdb_breakpoint();
 kgdbts_break_test();
 kgdbts_break_test();
}
