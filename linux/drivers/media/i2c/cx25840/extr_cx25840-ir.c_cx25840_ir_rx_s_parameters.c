
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cx25840_ir_fifo_rec {int dummy; } cx25840_ir_fifo_rec ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct v4l2_subdev_ir_parameters {scalar_t__ mode; int bytes_per_data_element; int duty_cycle; int enable; scalar_t__ interrupt_enable; int invert_level; int resolution; int noise_filter_min_width; scalar_t__ max_pulse_width; int carrier_range_upper; int carrier_range_lower; int carrier_freq; int modulation; scalar_t__ shutdown; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_ir_state {int rx_params_lock; int rx_kfifo_lock; int rx_kfifo; int rx_invert; int rxclk_divider; struct v4l2_subdev_ir_parameters rx_params; struct i2c_client* c; } ;


 int CNTRL_EDG_BOTH ;
 int ENODEV ;
 int ENOSYS ;
 int FIFO_RXTX ;
 int IRQEN_ROE ;
 int IRQEN_RSE ;
 int IRQEN_RTE ;
 int RX_FIFO_HALF_FULL ;
 scalar_t__ V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ;
 int atomic_set (int *,int ) ;
 int clock_divider_to_resolution (int ) ;
 int control_rx_demodulation_enable (struct i2c_client*,int ) ;
 int control_rx_enable (struct i2c_client*,int) ;
 int control_rx_irq_watermark (struct i2c_client*,int ) ;
 int control_rx_s_carrier_window (struct i2c_client*,int ,int *,int *) ;
 int control_rx_s_edge_detection (struct i2c_client*,int ) ;
 int cx25840_ir_rx_shutdown (struct v4l2_subdev*) ;
 int filter_rx_s_min_width (struct i2c_client*,int ) ;
 int irqenable_rx (struct v4l2_subdev*,int) ;
 int kfifo_reset (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pulse_width_count_to_ns (int ,int ) ;
 int rxclk_rx_s_carrier (struct i2c_client*,int ,int *) ;
 scalar_t__ rxclk_rx_s_max_pulse_width (struct i2c_client*,scalar_t__,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cx25840_ir_state* to_ir_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_ir_rx_s_parameters(struct v4l2_subdev *sd,
          struct v4l2_subdev_ir_parameters *p)
{
 struct cx25840_ir_state *ir_state = to_ir_state(sd);
 struct i2c_client *c;
 struct v4l2_subdev_ir_parameters *o;
 u16 rxclk_divider;

 if (ir_state == ((void*)0))
  return -ENODEV;

 if (p->shutdown)
  return cx25840_ir_rx_shutdown(sd);

 if (p->mode != V4L2_SUBDEV_IR_MODE_PULSE_WIDTH)
  return -ENOSYS;

 c = ir_state->c;
 o = &ir_state->rx_params;

 mutex_lock(&ir_state->rx_params_lock);

 o->shutdown = p->shutdown;

 p->mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;
 o->mode = p->mode;

 p->bytes_per_data_element = sizeof(union cx25840_ir_fifo_rec);
 o->bytes_per_data_element = p->bytes_per_data_element;


 irqenable_rx(sd, 0);
 control_rx_enable(c, 0);

 control_rx_demodulation_enable(c, p->modulation);
 o->modulation = p->modulation;

 if (p->modulation) {
  p->carrier_freq = rxclk_rx_s_carrier(c, p->carrier_freq,
           &rxclk_divider);

  o->carrier_freq = p->carrier_freq;

  p->duty_cycle = 50;
  o->duty_cycle = p->duty_cycle;

  control_rx_s_carrier_window(c, p->carrier_freq,
         &p->carrier_range_lower,
         &p->carrier_range_upper);
  o->carrier_range_lower = p->carrier_range_lower;
  o->carrier_range_upper = p->carrier_range_upper;

  p->max_pulse_width =
   (u32) pulse_width_count_to_ns(FIFO_RXTX, rxclk_divider);
 } else {
  p->max_pulse_width =
       rxclk_rx_s_max_pulse_width(c, p->max_pulse_width,
             &rxclk_divider);
 }
 o->max_pulse_width = p->max_pulse_width;
 atomic_set(&ir_state->rxclk_divider, rxclk_divider);

 p->noise_filter_min_width =
       filter_rx_s_min_width(c, p->noise_filter_min_width);
 o->noise_filter_min_width = p->noise_filter_min_width;

 p->resolution = clock_divider_to_resolution(rxclk_divider);
 o->resolution = p->resolution;


 control_rx_irq_watermark(c, RX_FIFO_HALF_FULL);

 control_rx_s_edge_detection(c, CNTRL_EDG_BOTH);

 o->invert_level = p->invert_level;
 atomic_set(&ir_state->rx_invert, p->invert_level);

 o->interrupt_enable = p->interrupt_enable;
 o->enable = p->enable;
 if (p->enable) {
  unsigned long flags;

  spin_lock_irqsave(&ir_state->rx_kfifo_lock, flags);
  kfifo_reset(&ir_state->rx_kfifo);
  spin_unlock_irqrestore(&ir_state->rx_kfifo_lock, flags);
  if (p->interrupt_enable)
   irqenable_rx(sd, IRQEN_RSE | IRQEN_RTE | IRQEN_ROE);
  control_rx_enable(c, p->enable);
 }

 mutex_unlock(&ir_state->rx_params_lock);
 return 0;
}
