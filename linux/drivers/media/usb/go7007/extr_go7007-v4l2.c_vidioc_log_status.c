
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int v4l2_dev; } ;
struct file {int dummy; } ;


 int call_all (int *,int ,int ) ;
 int core ;
 int log_status ;
 int v4l2_ctrl_log_status (struct file*,void*) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct go7007 *go = video_drvdata(file);

 v4l2_ctrl_log_status(file, priv);
 return call_all(&go->v4l2_dev, core, log_status);
}
