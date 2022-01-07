
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct brcmf_usbdev {int dummy; } ;
struct TYPE_2__ {struct brcmf_usbdev* usb; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 struct brcmf_bus* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct brcmf_usbdev *brcmf_usb_get_buspub(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 return bus_if->bus_priv.usb;
}
