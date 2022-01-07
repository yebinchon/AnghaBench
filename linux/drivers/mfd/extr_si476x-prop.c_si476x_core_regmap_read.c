
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {int dummy; } ;


 int si476x_core_cmd_get_property (struct si476x_core*,unsigned int) ;

__attribute__((used)) static int si476x_core_regmap_read(void *context, unsigned int reg,
       unsigned *val)
{
 struct si476x_core *core = context;
 int err;

 err = si476x_core_cmd_get_property(core, reg);
 if (err < 0)
  return err;

 *val = err;

 return 0;
}
