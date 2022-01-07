
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int) ;
 int pasic3_read_register (struct device*,int) ;
 int pasic3_write_register (struct device*,int,int) ;

__attribute__((used)) static int ds1wm_enable(struct platform_device *pdev)
{
 struct device *dev = pdev->dev.parent;
 int c;

 c = pasic3_read_register(dev, 0x28);
 pasic3_write_register(dev, 0x28, c & 0x7f);

 dev_dbg(dev, "DS1WM OWM_EN low (active) %02x\n", c & 0x7f);
 return 0;
}
