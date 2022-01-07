
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {int priv; } ;
struct clk {int dummy; } ;
typedef int name ;


 int CLK_SET_RATE_PARENT ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int __clk_get_name (struct clk*) ;
 struct clk* clk_register_fractional_divider (int *,char*,int ,int ,int ,int,int,int,int,int ,int *) ;
 struct clk* clk_register_gate (int *,char*,int ,int ,int ,int,int ,int *) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int intel_lpss_register_clock_divider(struct intel_lpss *lpss,
          const char *devname,
          struct clk **clk)
{
 char name[32];
 struct clk *tmp = *clk;

 snprintf(name, sizeof(name), "%s-enable", devname);
 tmp = clk_register_gate(((void*)0), name, __clk_get_name(tmp), 0,
    lpss->priv, 0, 0, ((void*)0));
 if (IS_ERR(tmp))
  return PTR_ERR(tmp);

 snprintf(name, sizeof(name), "%s-div", devname);
 tmp = clk_register_fractional_divider(((void*)0), name, __clk_get_name(tmp),
           0, lpss->priv, 1, 15, 16, 15, 0,
           ((void*)0));
 if (IS_ERR(tmp))
  return PTR_ERR(tmp);
 *clk = tmp;

 snprintf(name, sizeof(name), "%s-update", devname);
 tmp = clk_register_gate(((void*)0), name, __clk_get_name(tmp),
    CLK_SET_RATE_PARENT, lpss->priv, 31, 0, ((void*)0));
 if (IS_ERR(tmp))
  return PTR_ERR(tmp);
 *clk = tmp;

 return 0;
}
