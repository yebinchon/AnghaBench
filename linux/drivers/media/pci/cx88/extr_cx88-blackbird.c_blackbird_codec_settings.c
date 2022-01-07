
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_core {int tvnorm; int height; int width; } ;
struct TYPE_3__ {int height; int width; } ;
struct cx8802_dev {TYPE_1__ cxhdl; struct cx88_core* core; } ;


 int CX2341X_ENC_SET_FRAME_SIZE ;
 int V4L2_STD_625_50 ;
 int blackbird_api_cmd (struct cx8802_dev*,int ,int,int ,int ,int ) ;
 int cx2341x_handler_set_50hz (TYPE_1__*,int) ;
 int cx2341x_handler_setup (TYPE_1__*) ;

__attribute__((used)) static void blackbird_codec_settings(struct cx8802_dev *dev)
{
 struct cx88_core *core = dev->core;


 blackbird_api_cmd(dev, CX2341X_ENC_SET_FRAME_SIZE, 2, 0,
     core->height, core->width);

 dev->cxhdl.width = core->width;
 dev->cxhdl.height = core->height;
 cx2341x_handler_set_50hz(&dev->cxhdl,
     dev->core->tvnorm & V4L2_STD_625_50);
 cx2341x_handler_setup(&dev->cxhdl);
}
