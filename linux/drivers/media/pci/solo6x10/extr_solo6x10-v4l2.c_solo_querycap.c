
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct solo_dev {int pdev; } ;
struct file {int dummy; } ;


 char* SOLO6X10_NAME ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct solo_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 struct solo_dev *solo_dev = video_drvdata(file);

 strscpy(cap->driver, SOLO6X10_NAME, sizeof(cap->driver));
 strscpy(cap->card, "Softlogic 6x10", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s",
   pci_name(solo_dev->pdev));
 return 0;
}
