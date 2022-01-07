
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int v4l2_dev; } ;
struct cx23885_dev {struct v4l2_subdev* sd_ir; } ;




 int cx23885_ir_rx_v4l2_dev_notify (struct v4l2_subdev*,int ) ;
 int cx23885_ir_tx_v4l2_dev_notify (struct v4l2_subdev*,int ) ;
 struct cx23885_dev* to_cx23885 (int ) ;

__attribute__((used)) static void cx23885_v4l2_dev_notify(struct v4l2_subdev *sd,
        unsigned int notification, void *arg)
{
 struct cx23885_dev *dev;

 if (sd == ((void*)0))
  return;

 dev = to_cx23885(sd->v4l2_dev);

 switch (notification) {
 case 129:
  if (sd == dev->sd_ir)
   cx23885_ir_rx_v4l2_dev_notify(sd, *(u32 *)arg);
  break;
 case 128:
  if (sd == dev->sd_ir)
   cx23885_ir_tx_v4l2_dev_notify(sd, *(u32 *)arg);
  break;
 }
}
