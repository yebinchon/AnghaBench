
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct mcam_camera {char* bus_info; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;
 struct mcam_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int mcam_vidioc_querycap(struct file *file, void *priv,
  struct v4l2_capability *cap)
{
 struct mcam_camera *cam = video_drvdata(file);

 strscpy(cap->driver, "marvell_ccic", sizeof(cap->driver));
 strscpy(cap->card, "marvell_ccic", sizeof(cap->card));
 strscpy(cap->bus_info, cam->bus_info, sizeof(cap->bus_info));
 return 0;
}
