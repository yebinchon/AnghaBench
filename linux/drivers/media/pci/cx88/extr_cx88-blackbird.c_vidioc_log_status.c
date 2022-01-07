
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cx88_core {char* name; } ;
struct TYPE_2__ {int hdl; } ;
struct cx8802_dev {TYPE_1__ cxhdl; struct cx88_core* core; } ;
typedef int name ;


 int call_all (struct cx88_core*,struct cx88_core*,int ) ;
 int log_status ;
 int snprintf (char*,int,char*,char*) ;
 int v4l2_ctrl_handler_log_status (int *,char*) ;
 struct cx8802_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct cx8802_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;
 char name[32 + 2];

 snprintf(name, sizeof(name), "%s/2", core->name);
 call_all(core, core, log_status);
 v4l2_ctrl_handler_log_status(&dev->cxhdl.hdl, name);
 return 0;
}
