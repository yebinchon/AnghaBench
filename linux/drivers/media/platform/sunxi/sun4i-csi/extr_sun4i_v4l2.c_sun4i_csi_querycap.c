
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct sun4i_csi {int dev; } ;
struct file {int dummy; } ;


 char* KBUILD_MODNAME ;
 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct sun4i_csi* video_drvdata (struct file*) ;

__attribute__((used)) static int sun4i_csi_querycap(struct file *file, void *priv,
         struct v4l2_capability *cap)
{
 struct sun4i_csi *csi = video_drvdata(file);

 strscpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strscpy(cap->card, "sun4i-csi", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(csi->dev));

 return 0;
}
