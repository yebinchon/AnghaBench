
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ab8500 {int dev; } ;
typedef int ssize_t ;


 int AB8500_REGU_CTRL2 ;
 int AB9540_MODEM_CTRL2_REG ;
 int AB9540_MODEM_CTRL2_SWDBBRSTN_BIT ;
 struct ab8500* dev_get_drvdata (struct device*) ;
 int dev_info (int ,char*,char const,int) ;
 int mask_and_set_register_interruptible (struct ab8500*,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t store_ab9540_dbbrstn(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct ab8500 *ab8500;
 int ret = count;
 int err;
 u8 bitvalues;

 ab8500 = dev_get_drvdata(dev);

 if (count > 0) {
  switch (buf[0]) {
  case '0':
   bitvalues = 0;
   break;
  case '1':
   bitvalues = AB9540_MODEM_CTRL2_SWDBBRSTN_BIT;
   break;
  default:
   goto exit;
  }

  err = mask_and_set_register_interruptible(ab8500,
   AB8500_REGU_CTRL2, AB9540_MODEM_CTRL2_REG,
   AB9540_MODEM_CTRL2_SWDBBRSTN_BIT, bitvalues);
  if (err)
   dev_info(ab8500->dev,
    "Failed to set DBBRSTN %c, err %#x\n",
    buf[0], err);
 }

exit:
 return ret;
}
