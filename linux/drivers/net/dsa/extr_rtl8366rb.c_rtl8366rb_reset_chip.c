
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct realtek_smi {int dev; int map; } ;


 int EIO ;
 int RTL8366RB_CHIP_CTRL_RESET_HW ;
 int RTL8366RB_RESET_CTRL_REG ;
 int dev_err (int ,char*) ;
 int realtek_smi_write_reg_noack (struct realtek_smi*,int ,int) ;
 int regmap_read (int ,int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rtl8366rb_reset_chip(struct realtek_smi *smi)
{
 int timeout = 10;
 u32 val;
 int ret;

 realtek_smi_write_reg_noack(smi, RTL8366RB_RESET_CTRL_REG,
        RTL8366RB_CHIP_CTRL_RESET_HW);
 do {
  usleep_range(20000, 25000);
  ret = regmap_read(smi->map, RTL8366RB_RESET_CTRL_REG, &val);
  if (ret)
   return ret;

  if (!(val & RTL8366RB_CHIP_CTRL_RESET_HW))
   break;
 } while (--timeout);

 if (!timeout) {
  dev_err(smi->dev, "timeout waiting for the switch to reset\n");
  return -EIO;
 }

 return 0;
}
