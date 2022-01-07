
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct as3722 {int dev; } ;


 int AS3722_ASIC_ID1_REG ;
 int AS3722_ASIC_ID2_REG ;
 int AS3722_DEVICE_ID ;
 int ENODEV ;
 int as3722_read (struct as3722*,int ,int*) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int) ;

__attribute__((used)) static int as3722_check_device_id(struct as3722 *as3722)
{
 u32 val;
 int ret;


 ret = as3722_read(as3722, AS3722_ASIC_ID1_REG, &val);
 if (ret < 0) {
  dev_err(as3722->dev, "ASIC_ID1 read failed: %d\n", ret);
  return ret;
 }

 if (val != AS3722_DEVICE_ID) {
  dev_err(as3722->dev, "Device is not AS3722, ID is 0x%x\n", val);
  return -ENODEV;
 }

 ret = as3722_read(as3722, AS3722_ASIC_ID2_REG, &val);
 if (ret < 0) {
  dev_err(as3722->dev, "ASIC_ID2 read failed: %d\n", ret);
  return ret;
 }

 dev_info(as3722->dev, "AS3722 with revision 0x%x found\n", val);
 return 0;
}
