
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int si476x_core_cmd_set_property (void*,unsigned int,unsigned int) ;

__attribute__((used)) static int si476x_core_regmap_write(void *context, unsigned int reg,
        unsigned int val)
{
 return si476x_core_cmd_set_property(context, reg, val);
}
