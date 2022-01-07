
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int sc_base; scalar_t__ sub_ctrl; } ;


 int dsaf_write_reg (int ,int ,int ) ;
 int dsaf_write_syscon (scalar_t__,int ,int ) ;

__attribute__((used)) static void dsaf_write_sub(struct dsaf_device *dsaf_dev, u32 reg, u32 val)
{
 if (dsaf_dev->sub_ctrl)
  dsaf_write_syscon(dsaf_dev->sub_ctrl, reg, val);
 else
  dsaf_write_reg(dsaf_dev->sc_base, reg, val);
}
