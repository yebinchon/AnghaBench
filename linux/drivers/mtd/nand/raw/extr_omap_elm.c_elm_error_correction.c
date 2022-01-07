
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct elm_info {int ecc_steps; } ;
struct elm_errorvec {int error_count; int* error_loc; int error_uncorrectable; scalar_t__ error_reported; } ;


 int BIT (int) ;
 int ECC_CORRECTABLE_MASK ;
 int ECC_ERROR_LOCATION_MASK ;
 int ECC_NB_ERRORS_MASK ;
 int ELM_ERROR_LOCATION_0 ;
 int ELM_IRQSTATUS ;
 int ELM_LOCATION_STATUS ;
 int ERROR_LOCATION_SIZE ;
 int elm_configure_page_mode (struct elm_info*,int,int) ;
 int elm_read_reg (struct elm_info*,int) ;
 int elm_write_reg (struct elm_info*,int ,int ) ;

__attribute__((used)) static void elm_error_correction(struct elm_info *info,
  struct elm_errorvec *err_vec)
{
 int i, j, errors = 0;
 int offset;
 u32 reg_val;

 for (i = 0; i < info->ecc_steps; i++) {


  if (err_vec[i].error_reported) {
   offset = ELM_LOCATION_STATUS + ERROR_LOCATION_SIZE * i;
   reg_val = elm_read_reg(info, offset);


   if (reg_val & ECC_CORRECTABLE_MASK) {
    offset = ELM_ERROR_LOCATION_0 +
     ERROR_LOCATION_SIZE * i;


    err_vec[i].error_count = reg_val &
     ECC_NB_ERRORS_MASK;


    for (j = 0; j < err_vec[i].error_count; j++) {

     reg_val = elm_read_reg(info, offset);
     err_vec[i].error_loc[j] = reg_val &
      ECC_ERROR_LOCATION_MASK;


     offset += 4;
    }

    errors += err_vec[i].error_count;
   } else {
    err_vec[i].error_uncorrectable = 1;
   }


   elm_write_reg(info, ELM_IRQSTATUS, BIT(i));


   elm_configure_page_mode(info, i, 0);
  }
 }
}
