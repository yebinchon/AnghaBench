
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int tst; } ;


 int eprintk (char*,char*) ;
 int hw_breakpoint_test ;
 scalar_t__ hwbreaks_ok ;
 int init_simple_test () ;
 int kgdb_breakpoint () ;
 int kgdbts_break_test () ;
 int sw_breakpoint_test ;
 scalar_t__ test_complete ;
 TYPE_1__ ts ;

__attribute__((used)) static void run_breakpoint_test(int is_hw_breakpoint)
{
 test_complete = 0;
 init_simple_test();
 if (is_hw_breakpoint) {
  ts.tst = hw_breakpoint_test;
  ts.name = "hw_breakpoint_test";
 } else {
  ts.tst = sw_breakpoint_test;
  ts.name = "sw_breakpoint_test";
 }

 kgdb_breakpoint();

 kgdbts_break_test();
 kgdb_breakpoint();

 if (test_complete)
  return;

 eprintk("kgdbts: ERROR %s test failed\n", ts.name);
 if (is_hw_breakpoint)
  hwbreaks_ok = 0;
}
