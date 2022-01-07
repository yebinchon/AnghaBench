
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cio2_device {int pci_dev; } ;


 int CIO2_DEVICE_NAME ;
 int CIO2_NAME ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct cio2_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cio2_v4l2_querycap(struct file *file, void *fh,
         struct v4l2_capability *cap)
{
 struct cio2_device *cio2 = video_drvdata(file);

 strscpy(cap->driver, CIO2_NAME, sizeof(cap->driver));
 strscpy(cap->card, CIO2_DEVICE_NAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "PCI:%s", pci_name(cio2->pci_dev));

 return 0;
}
