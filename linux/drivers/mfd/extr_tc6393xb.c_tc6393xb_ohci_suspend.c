
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc6393xb_platform_data {scalar_t__ resume_restore; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EBUSY ;
 struct tc6393xb_platform_data* dev_get_platdata (int ) ;
 int tc6393xb_ohci_disable (struct platform_device*) ;

__attribute__((used)) static int tc6393xb_ohci_suspend(struct platform_device *dev)
{
 struct tc6393xb_platform_data *tcpd = dev_get_platdata(dev->dev.parent);


 if (tcpd->resume_restore)
  return -EBUSY;

 return tc6393xb_ohci_disable(dev);
}
