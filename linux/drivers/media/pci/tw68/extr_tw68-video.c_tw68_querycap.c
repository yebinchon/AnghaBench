
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct tw68_dev {int pci; } ;
struct file {int dummy; } ;


 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct tw68_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int tw68_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct tw68_dev *dev = video_drvdata(file);

 strscpy(cap->driver, "tw68", sizeof(cap->driver));
 strscpy(cap->card, "Techwell Capture Card",
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(dev->pci));
 return 0;
}
