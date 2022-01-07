
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_streamparm {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int subdev; } ;
struct atmel_isi {TYPE_1__ entity; } ;


 int v4l2_g_parm_cap (int ,int ,struct v4l2_streamparm*) ;
 int video_devdata (struct file*) ;
 struct atmel_isi* video_drvdata (struct file*) ;

__attribute__((used)) static int isi_g_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct atmel_isi *isi = video_drvdata(file);

 return v4l2_g_parm_cap(video_devdata(file), isi->entity.subdev, a);
}
