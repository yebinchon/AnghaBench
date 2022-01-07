
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int hdl; } ;
struct cx23885_dev {char* name; TYPE_1__ cxhdl; } ;
typedef int name ;


 int call_all (struct cx23885_dev*,int ,int ) ;
 int core ;
 int log_status ;
 int snprintf (char*,int,char*,char*) ;
 int v4l2_ctrl_handler_log_status (int *,char*) ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct cx23885_dev *dev = video_drvdata(file);
 char name[32 + 2];

 snprintf(name, sizeof(name), "%s/2", dev->name);
 call_all(dev, core, log_status);
 v4l2_ctrl_handler_log_status(&dev->cxhdl.hdl, name);
 return 0;
}
