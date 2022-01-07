
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xsdfec_dev {int dummy; } ;


 int xsdfec_regread (struct xsdfec_dev*,int) ;

__attribute__((used)) static void update_bool_config_from_reg(struct xsdfec_dev *xsdfec,
     u32 reg_offset, u32 bit_num,
     char *config_value)
{
 u32 reg_val;
 u32 bit_mask = 1 << bit_num;

 reg_val = xsdfec_regread(xsdfec, reg_offset);
 *config_value = (reg_val & bit_mask) > 0;
}
