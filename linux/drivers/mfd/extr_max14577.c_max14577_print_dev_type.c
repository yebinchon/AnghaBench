
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max14577 {int dev_type; int dev; int regmap; } ;


 int DEVID_DEVICEID_MASK ;
 int DEVID_DEVICEID_SHIFT ;
 int DEVID_VENDORID_MASK ;
 int DEVID_VENDORID_SHIFT ;
 int MAX14577_REG_DEVICEID ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int ,int,int) ;
 int max14577_read_reg (int ,int ,int*) ;

__attribute__((used)) static void max14577_print_dev_type(struct max14577 *max14577)
{
 u8 reg_data, vendor_id, device_id;
 int ret;

 ret = max14577_read_reg(max14577->regmap, MAX14577_REG_DEVICEID,
   &reg_data);
 if (ret) {
  dev_err(max14577->dev,
   "Failed to read DEVICEID register: %d\n", ret);
  return;
 }

 vendor_id = ((reg_data & DEVID_VENDORID_MASK) >>
    DEVID_VENDORID_SHIFT);
 device_id = ((reg_data & DEVID_DEVICEID_MASK) >>
    DEVID_DEVICEID_SHIFT);

 dev_info(max14577->dev, "Device type: %u (ID: 0x%x, vendor: 0x%x)\n",
   max14577->dev_type, device_id, vendor_id);
}
