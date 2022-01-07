
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx88_core {struct cx8802_dev* dvbdev; } ;
struct cx8802_driver {struct cx88_core* core; } ;
struct TYPE_2__ {int hdl; } ;
struct cx8802_dev {TYPE_1__ cxhdl; } ;


 int blackbird_unregister_video (struct cx8802_dev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int cx8802_blackbird_remove(struct cx8802_driver *drv)
{
 struct cx88_core *core = drv->core;
 struct cx8802_dev *dev = core->dvbdev;


 blackbird_unregister_video(drv->core->dvbdev);
 v4l2_ctrl_handler_free(&dev->cxhdl.hdl);

 return 0;
}
