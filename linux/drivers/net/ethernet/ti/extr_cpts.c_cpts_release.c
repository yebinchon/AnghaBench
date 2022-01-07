
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpts {int refclk; } ;


 scalar_t__ WARN_ON (int) ;
 int clk_unprepare (int ) ;

void cpts_release(struct cpts *cpts)
{
 if (!cpts)
  return;

 if (WARN_ON(!cpts->refclk))
  return;

 clk_unprepare(cpts->refclk);
}
