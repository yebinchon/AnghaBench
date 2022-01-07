
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_streamparm {int dummy; } ;
struct isc_device {TYPE_1__* current_subdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int sd; } ;


 int v4l2_g_parm_cap (int ,int ,struct v4l2_streamparm*) ;
 int video_devdata (struct file*) ;
 struct isc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int isc_g_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct isc_device *isc = video_drvdata(file);

 return v4l2_g_parm_cap(video_devdata(file), isc->current_subdev->sd, a);
}
