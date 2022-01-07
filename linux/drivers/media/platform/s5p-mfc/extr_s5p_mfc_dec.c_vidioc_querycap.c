
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct s5p_mfc_dev {TYPE_1__* plat_dev; TYPE_2__* vfd_dec; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int dev; } ;


 int S5P_MFC_NAME ;
 char* dev_name (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct s5p_mfc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct s5p_mfc_dev *dev = video_drvdata(file);

 strscpy(cap->driver, S5P_MFC_NAME, sizeof(cap->driver));
 strscpy(cap->card, dev->vfd_dec->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(&dev->plat_dev->dev));
 return 0;
}
