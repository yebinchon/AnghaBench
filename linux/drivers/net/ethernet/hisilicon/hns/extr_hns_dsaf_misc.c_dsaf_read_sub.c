
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int sc_base; int dev; scalar_t__ sub_ctrl; } ;


 int dev_err (int ,char*,int) ;
 int dsaf_read_reg (int ,int ) ;
 int dsaf_read_syscon (scalar_t__,int ,int *) ;

__attribute__((used)) static u32 dsaf_read_sub(struct dsaf_device *dsaf_dev, u32 reg)
{
 u32 ret = 0;
 int err;

 if (dsaf_dev->sub_ctrl) {
  err = dsaf_read_syscon(dsaf_dev->sub_ctrl, reg, &ret);
  if (err)
   dev_err(dsaf_dev->dev, "dsaf_read_syscon error %d!\n",
    err);
 } else {
  ret = dsaf_read_reg(dsaf_dev->sc_base, reg);
 }

 return ret;
}
