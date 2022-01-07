
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_streamparm {int dummy; } ;
struct TYPE_2__ {int source; } ;
struct stm32_dcmi {TYPE_1__ entity; } ;
struct file {int dummy; } ;


 int v4l2_g_parm_cap (int ,int ,struct v4l2_streamparm*) ;
 int video_devdata (struct file*) ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_g_parm(struct file *file, void *priv,
         struct v4l2_streamparm *p)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);

 return v4l2_g_parm_cap(video_devdata(file), dcmi->entity.source, p);
}
