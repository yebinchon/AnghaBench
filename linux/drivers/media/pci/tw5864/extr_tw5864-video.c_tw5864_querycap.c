
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct tw5864_input {int nr; TYPE_1__* root; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pci; } ;


 char* pci_name (int ) ;
 int snprintf (int ,int,char*,int) ;
 int sprintf (int ,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct tw5864_input *input = video_drvdata(file);

 strscpy(cap->driver, "tw5864", sizeof(cap->driver));
 snprintf(cap->card, sizeof(cap->card), "TW5864 Encoder %d",
   input->nr);
 sprintf(cap->bus_info, "PCI:%s", pci_name(input->root->pci));
 return 0;
}
