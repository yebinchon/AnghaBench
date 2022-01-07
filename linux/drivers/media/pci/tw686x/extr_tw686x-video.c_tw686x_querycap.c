
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct tw686x_video_channel {struct tw686x_dev* dev; } ;
struct tw686x_dev {char* name; int pci_dev; } ;
struct file {int dummy; } ;


 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 struct tw686x_dev *dev = vc->dev;

 strscpy(cap->driver, "tw686x", sizeof(cap->driver));
 strscpy(cap->card, dev->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "PCI:%s", pci_name(dev->pci_dev));
 return 0;
}
