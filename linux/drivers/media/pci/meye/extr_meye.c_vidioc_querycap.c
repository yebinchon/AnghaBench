
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mchip_dev; } ;


 TYPE_1__ meye ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *fh,
    struct v4l2_capability *cap)
{
 strscpy(cap->driver, "meye", sizeof(cap->driver));
 strscpy(cap->card, "meye", sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(meye.mchip_dev));
 return 0;
}
