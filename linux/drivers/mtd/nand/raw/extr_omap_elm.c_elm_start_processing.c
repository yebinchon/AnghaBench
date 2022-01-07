
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct elm_info {int ecc_steps; } ;
struct elm_errorvec {scalar_t__ error_reported; } ;


 int ELM_SYNDROME_FRAGMENT_6 ;
 int ELM_SYNDROME_VALID ;
 int SYNDROME_FRAGMENT_REG_SIZE ;
 int elm_read_reg (struct elm_info*,int) ;
 int elm_write_reg (struct elm_info*,int,int ) ;

__attribute__((used)) static void elm_start_processing(struct elm_info *info,
  struct elm_errorvec *err_vec)
{
 int i, offset;
 u32 reg_val;





 for (i = 0; i < info->ecc_steps; i++) {
  if (err_vec[i].error_reported) {
   offset = ELM_SYNDROME_FRAGMENT_6 +
    SYNDROME_FRAGMENT_REG_SIZE * i;
   reg_val = elm_read_reg(info, offset);
   reg_val |= ELM_SYNDROME_VALID;
   elm_write_reg(info, offset, reg_val);
  }
 }
}
