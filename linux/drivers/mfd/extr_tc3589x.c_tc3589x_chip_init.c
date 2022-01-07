
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc3589x {int dev; } ;


 int EINVAL ;
 int TC3589x_MANFCODE ;
 int TC3589x_MANFCODE_MAGIC ;
 int TC3589x_RSTCTRL ;
 int TC3589x_RSTCTRL_KBDRST ;
 int TC3589x_RSTCTRL_ROTRST ;
 int TC3589x_RSTCTRL_TIMRST ;
 int TC3589x_RSTINTCLR ;
 int TC3589x_VERSION ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int,int) ;
 int tc3589x_reg_read (struct tc3589x*,int ) ;
 int tc3589x_reg_write (struct tc3589x*,int ,int) ;

__attribute__((used)) static int tc3589x_chip_init(struct tc3589x *tc3589x)
{
 int manf, ver, ret;

 manf = tc3589x_reg_read(tc3589x, TC3589x_MANFCODE);
 if (manf < 0)
  return manf;

 ver = tc3589x_reg_read(tc3589x, TC3589x_VERSION);
 if (ver < 0)
  return ver;

 if (manf != TC3589x_MANFCODE_MAGIC) {
  dev_err(tc3589x->dev, "unknown manufacturer: %#x\n", manf);
  return -EINVAL;
 }

 dev_info(tc3589x->dev, "manufacturer: %#x, version: %#x\n", manf, ver);






 ret = tc3589x_reg_write(tc3589x, TC3589x_RSTCTRL,
    TC3589x_RSTCTRL_TIMRST
    | TC3589x_RSTCTRL_ROTRST
    | TC3589x_RSTCTRL_KBDRST);
 if (ret < 0)
  return ret;


 return tc3589x_reg_write(tc3589x, TC3589x_RSTINTCLR, 0x1);
}
