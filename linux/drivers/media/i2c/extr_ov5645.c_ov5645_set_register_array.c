
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_value {int val; int reg; } ;
struct ov5645 {int dummy; } ;


 int ov5645_write_reg (struct ov5645*,int ,int ) ;

__attribute__((used)) static int ov5645_set_register_array(struct ov5645 *ov5645,
         const struct reg_value *settings,
         unsigned int num_settings)
{
 unsigned int i;
 int ret;

 for (i = 0; i < num_settings; ++i, ++settings) {
  ret = ov5645_write_reg(ov5645, settings->reg, settings->val);
  if (ret < 0)
   return ret;
 }

 return 0;
}
