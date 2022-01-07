
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ov9640_reg_alt {int com15; int com13; int com12; int com7; } ;
struct ov9640_reg {int reg; int val; } ;
struct i2c_client {int dev; } ;


 unsigned int ARRAY_SIZE (struct ov9640_reg*) ;
 int EINVAL ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int dev_err (int *,char*) ;
 int ov9640_reg_write (struct i2c_client*,int,int ) ;
 struct ov9640_reg* ov9640_regs_cif ;
 struct ov9640_reg* ov9640_regs_qcif ;
 struct ov9640_reg* ov9640_regs_qqcif ;
 struct ov9640_reg* ov9640_regs_qqvga ;
 struct ov9640_reg* ov9640_regs_qvga ;
 struct ov9640_reg* ov9640_regs_rgb ;
 struct ov9640_reg* ov9640_regs_sxga ;
 struct ov9640_reg* ov9640_regs_vga ;
 struct ov9640_reg* ov9640_regs_yuv ;

__attribute__((used)) static int ov9640_write_regs(struct i2c_client *client, u32 width,
  u32 code, struct ov9640_reg_alt *alts)
{
 const struct ov9640_reg *ov9640_regs, *matrix_regs;
 unsigned int ov9640_regs_len, matrix_regs_len;
 unsigned int i;
 int ret;
 u8 val;


 switch (width) {
 case 132:
  ov9640_regs = ov9640_regs_qqcif;
  ov9640_regs_len = ARRAY_SIZE(ov9640_regs_qqcif);
  break;
 case 131:
  ov9640_regs = ov9640_regs_qqvga;
  ov9640_regs_len = ARRAY_SIZE(ov9640_regs_qqvga);
  break;
 case 133:
  ov9640_regs = ov9640_regs_qcif;
  ov9640_regs_len = ARRAY_SIZE(ov9640_regs_qcif);
  break;
 case 130:
  ov9640_regs = ov9640_regs_qvga;
  ov9640_regs_len = ARRAY_SIZE(ov9640_regs_qvga);
  break;
 case 134:
  ov9640_regs = ov9640_regs_cif;
  ov9640_regs_len = ARRAY_SIZE(ov9640_regs_cif);
  break;
 case 128:
  ov9640_regs = ov9640_regs_vga;
  ov9640_regs_len = ARRAY_SIZE(ov9640_regs_vga);
  break;
 case 129:
  ov9640_regs = ov9640_regs_sxga;
  ov9640_regs_len = ARRAY_SIZE(ov9640_regs_sxga);
  break;
 default:
  dev_err(&client->dev, "Failed to select resolution!\n");
  return -EINVAL;
 }


 if (code == MEDIA_BUS_FMT_UYVY8_2X8) {
  matrix_regs = ov9640_regs_yuv;
  matrix_regs_len = ARRAY_SIZE(ov9640_regs_yuv);
 } else {
  matrix_regs = ov9640_regs_rgb;
  matrix_regs_len = ARRAY_SIZE(ov9640_regs_rgb);
 }


 for (i = 0; i < ov9640_regs_len; i++) {
  val = ov9640_regs[i].val;

  switch (ov9640_regs[i].reg) {
  case 135:
   val |= alts->com7;
   break;
  case 138:
   val |= alts->com12;
   break;
  case 137:
   val |= alts->com13;
   break;
  case 136:
   val |= alts->com15;
   break;
  }

  ret = ov9640_reg_write(client, ov9640_regs[i].reg, val);
  if (ret)
   return ret;
 }


 for (i = 0; i < matrix_regs_len; i++) {
  ret = ov9640_reg_write(client, matrix_regs[i].reg,
           matrix_regs[i].val);
  if (ret)
   return ret;
 }

 return 0;
}
