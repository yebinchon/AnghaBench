
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int EIO ;
 int cpu_relax () ;
 int doc_delay (struct docg3*,int) ;
 int doc_is_ready (struct docg3*) ;

__attribute__((used)) static int doc_wait_ready(struct docg3 *docg3)
{
 int maxWaitCycles = 100;

 do {
  doc_delay(docg3, 4);
  cpu_relax();
 } while (!doc_is_ready(docg3) && maxWaitCycles--);
 doc_delay(docg3, 2);
 if (maxWaitCycles > 0)
  return 0;
 else
  return -EIO;
}
