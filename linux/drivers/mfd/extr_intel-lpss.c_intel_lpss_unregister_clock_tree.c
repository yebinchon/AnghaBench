
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 struct clk* clk_get_parent (struct clk*) ;
 int clk_unregister (struct clk*) ;

__attribute__((used)) static void intel_lpss_unregister_clock_tree(struct clk *clk)
{
 struct clk *parent;

 while (clk) {
  parent = clk_get_parent(clk);
  clk_unregister(clk);
  clk = parent;
 }
}
