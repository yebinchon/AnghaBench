
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int driver; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8802_dev {int pci; struct cx88_core* core; } ;


 int cx88_querycap (struct file*,struct cx88_core*,struct v4l2_capability*) ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct cx8802_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct cx8802_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 strscpy(cap->driver, "cx88_blackbird", sizeof(cap->driver));
 sprintf(cap->bus_info, "PCI:%s", pci_name(dev->pci));
 return cx88_querycap(file, core, cap);
}
