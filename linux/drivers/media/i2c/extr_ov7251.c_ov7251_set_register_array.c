
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_value {int val; int reg; } ;
struct ov7251 {int dummy; } ;


 int ov7251_write_reg (struct ov7251*,int ,int ) ;

__attribute__((used)) static int ov7251_set_register_array(struct ov7251 *ov7251,
         const struct reg_value *settings,
         unsigned int num_settings)
{
 unsigned int i;
 int ret;

 for (i = 0; i < num_settings; ++i, ++settings) {
  ret = ov7251_write_reg(ov7251, settings->reg, settings->val);
  if (ret < 0)
   return ret;
 }

 return 0;
}
