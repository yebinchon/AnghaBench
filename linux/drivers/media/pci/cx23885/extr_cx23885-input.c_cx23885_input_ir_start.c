
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_ir_parameters {int enable; int interrupt_enable; int shutdown; int modulation; int max_pulse_width; int noise_filter_min_width; int invert_level; int carrier_freq; int carrier_range_lower; int carrier_range_upper; int duty_cycle; void* mode; } ;
struct cx23885_dev {int board; int * sd_ir; int ir_input_stopping; } ;
 int ENODEV ;
 void* V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ;
 int atomic_set (int *,int ) ;
 int ir ;
 int rx_g_parameters ;
 int rx_s_parameters ;
 int v4l2_subdev_call (int *,int ,int ,struct v4l2_subdev_ir_parameters*) ;

__attribute__((used)) static int cx23885_input_ir_start(struct cx23885_dev *dev)
{
 struct v4l2_subdev_ir_parameters params;

 if (dev->sd_ir == ((void*)0))
  return -ENODEV;

 atomic_set(&dev->ir_input_stopping, 0);

 v4l2_subdev_call(dev->sd_ir, ir, rx_g_parameters, &params);
 switch (dev->board) {
 case 136:
 case 134:
 case 135:
 case 138:
 case 133:
 case 141:
 case 140:
 case 143:
 case 128:
 case 144:
 case 142:
 case 139:
 case 137:




  params.mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;
  params.enable = 1;
  params.interrupt_enable = 1;
  params.shutdown = 0;


  params.modulation = 0;


  params.max_pulse_width = 3333333;


  params.noise_filter_min_width = 333333;





  params.invert_level = 1;
  break;
 case 130:
 case 129:
 case 132:
 case 131:




  params.mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;
  params.enable = 1;
  params.interrupt_enable = 1;
  params.shutdown = 0;


  params.carrier_freq = 37917;
  params.carrier_range_lower = 33000;
  params.carrier_range_upper = 43000;
  params.duty_cycle = 33;





  params.max_pulse_width = 12378022;





  params.noise_filter_min_width = 351648;

  params.modulation = 0;
  params.invert_level = 1;
  break;
 }
 v4l2_subdev_call(dev->sd_ir, ir, rx_s_parameters, &params);
 return 0;
}
