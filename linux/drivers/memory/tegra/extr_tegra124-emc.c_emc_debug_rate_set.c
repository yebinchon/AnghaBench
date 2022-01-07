
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk {int dummy; } ;


 int clk_set_rate (struct clk*,int ) ;

__attribute__((used)) static int emc_debug_rate_set(void *data, u64 rate)
{
 struct clk *c = data;

 return clk_set_rate(c, rate);
}
