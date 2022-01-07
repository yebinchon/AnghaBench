
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx23885_dev {int dummy; } ;


 int call_all (struct cx23885_dev*,int ,int ) ;
 int core ;
 int log_status ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct cx23885_dev *dev = video_drvdata(file);

 call_all(dev, core, log_status);
 return 0;
}
