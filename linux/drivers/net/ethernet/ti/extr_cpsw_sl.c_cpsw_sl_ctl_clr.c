
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpsw_sl {int control_features; int dev; } ;


 int CPSW_SL_MACCONTROL ;
 int EINVAL ;
 int cpsw_sl_reg_read (struct cpsw_sl*,int ) ;
 int cpsw_sl_reg_write (struct cpsw_sl*,int ,int) ;
 int dev_err (int ,char*,int) ;

u32 cpsw_sl_ctl_clr(struct cpsw_sl *sl, u32 ctl_funcs)
{
 u32 val;

 if (ctl_funcs & ~sl->control_features) {
  dev_err(sl->dev, "cpsw_sl: unsupported func 0x%08X\n",
   ctl_funcs & (~sl->control_features));
  return -EINVAL;
 }

 val = cpsw_sl_reg_read(sl, CPSW_SL_MACCONTROL);
 val &= ~ctl_funcs;
 cpsw_sl_reg_write(sl, CPSW_SL_MACCONTROL, val);

 return 0;
}
