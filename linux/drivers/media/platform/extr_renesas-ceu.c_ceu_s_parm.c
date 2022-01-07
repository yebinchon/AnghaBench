
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_streamparm {int dummy; } ;
struct file {int dummy; } ;
struct ceu_device {TYPE_1__* sd; } ;
struct TYPE_2__ {int v4l2_sd; } ;


 int v4l2_s_parm_cap (int ,int ,struct v4l2_streamparm*) ;
 int video_devdata (struct file*) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_s_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct ceu_device *ceudev = video_drvdata(file);

 return v4l2_s_parm_cap(video_devdata(file), ceudev->sd->v4l2_sd, a);
}
