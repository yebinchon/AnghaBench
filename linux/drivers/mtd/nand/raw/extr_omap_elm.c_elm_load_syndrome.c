
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct elm_info {int ecc_steps; int bch_type; int ecc_syndrome_size; } ;
struct elm_errorvec {scalar_t__ error_reported; } ;





 int ELM_SYNDROME_FRAGMENT_0 ;
 int SYNDROME_FRAGMENT_REG_SIZE ;
 int cpu_to_be32 (int) ;
 int elm_configure_page_mode (struct elm_info*,int,int) ;
 int elm_write_reg (struct elm_info*,int,int) ;
 int pr_err (char*) ;

__attribute__((used)) static void elm_load_syndrome(struct elm_info *info,
  struct elm_errorvec *err_vec, u8 *ecc)
{
 int i, offset;
 u32 val;

 for (i = 0; i < info->ecc_steps; i++) {


  if (err_vec[i].error_reported) {
   elm_configure_page_mode(info, i, 1);
   offset = ELM_SYNDROME_FRAGMENT_0 +
    SYNDROME_FRAGMENT_REG_SIZE * i;
   switch (info->bch_type) {
   case 128:

    val = cpu_to_be32(*(u32 *) &ecc[9]);
    elm_write_reg(info, offset, val);


    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[5]);
    elm_write_reg(info, offset, val);


    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[1]);
    elm_write_reg(info, offset, val);


    offset += 4;
    val = ecc[0];
    elm_write_reg(info, offset, val);
    break;
   case 129:

    val = (cpu_to_be32(*(u32 *) &ecc[3]) >> 4) |
     ((ecc[2] & 0xf) << 28);
    elm_write_reg(info, offset, val);


    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[0]) >> 12;
    elm_write_reg(info, offset, val);
    break;
   case 130:
    val = cpu_to_be32(*(u32 *) &ecc[22]);
    elm_write_reg(info, offset, val);
    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[18]);
    elm_write_reg(info, offset, val);
    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[14]);
    elm_write_reg(info, offset, val);
    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[10]);
    elm_write_reg(info, offset, val);
    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[6]);
    elm_write_reg(info, offset, val);
    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[2]);
    elm_write_reg(info, offset, val);
    offset += 4;
    val = cpu_to_be32(*(u32 *) &ecc[0]) >> 16;
    elm_write_reg(info, offset, val);
    break;
   default:
    pr_err("invalid config bch_type\n");
   }
  }


  ecc += info->ecc_syndrome_size;
 }
}
