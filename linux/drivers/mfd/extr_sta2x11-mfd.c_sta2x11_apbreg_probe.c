
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int sta2x11_apbreg ;
 int sta2x11_mfd_platform_probe (struct platform_device*,int ) ;

__attribute__((used)) static int sta2x11_apbreg_probe(struct platform_device *dev)
{
 return sta2x11_mfd_platform_probe(dev, sta2x11_apbreg);
}
