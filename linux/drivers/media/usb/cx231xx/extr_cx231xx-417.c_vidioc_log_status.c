
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int call_all (struct cx231xx*,int ,int ) ;
 int core ;
 int log_status ;
 int v4l2_ctrl_log_status (struct file*,void*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 call_all(dev, core, log_status);
 return v4l2_ctrl_log_status(file, priv);
}
