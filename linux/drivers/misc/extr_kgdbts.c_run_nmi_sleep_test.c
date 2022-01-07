
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int tst; } ;


 int eprintk (char*,...) ;
 int init_simple_test () ;
 int kgdb_breakpoint () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mdelay (int) ;
 int nmi_sleep_test ;
 int test_complete ;
 int touch_nmi_watchdog () ;
 TYPE_1__ ts ;

__attribute__((used)) static void run_nmi_sleep_test(int nmi_sleep)
{
 unsigned long flags;

 init_simple_test();
 ts.tst = nmi_sleep_test;
 ts.name = "nmi_sleep_test";

 kgdb_breakpoint();
 local_irq_save(flags);
 mdelay(nmi_sleep*1000);
 touch_nmi_watchdog();
 local_irq_restore(flags);
 if (test_complete != 2)
  eprintk("kgdbts: ERROR nmi_test did not hit nmi\n");
 kgdb_breakpoint();
 if (test_complete == 1)
  return;

 eprintk("kgdbts: ERROR %s test failed\n", ts.name);
}
