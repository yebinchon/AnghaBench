
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct camif_vp {int id; TYPE_1__* camif; } ;
struct TYPE_2__ {int dev; } ;


 int S3C_CAMIF_DRIVER_NAME ;
 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*,int) ;
 int strscpy (int ,int ,int) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_vidioc_querycap(struct file *file, void *priv,
         struct v4l2_capability *cap)
{
 struct camif_vp *vp = video_drvdata(file);

 strscpy(cap->driver, S3C_CAMIF_DRIVER_NAME, sizeof(cap->driver));
 strscpy(cap->card, S3C_CAMIF_DRIVER_NAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s.%d",
   dev_name(vp->camif->dev), vp->id);
 return 0;
}
