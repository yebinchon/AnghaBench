
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_device {int clk; } ;


 int clk_disable_unprepare (int ) ;

void xvip_cleanup_resources(struct xvip_device *xvip)
{
 clk_disable_unprepare(xvip->clk);
}
