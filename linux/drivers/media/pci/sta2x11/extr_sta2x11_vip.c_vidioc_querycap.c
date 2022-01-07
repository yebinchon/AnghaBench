
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct sta2x11_vip {int pdev; } ;
struct file {int dummy; } ;


 int KBUILD_MODNAME ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct sta2x11_vip* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct sta2x11_vip *vip = video_drvdata(file);

 strscpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strscpy(cap->card, KBUILD_MODNAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s",
   pci_name(vip->pdev));
 return 0;
}
