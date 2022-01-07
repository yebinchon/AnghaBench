
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ir_raw_event {int dummy; } ;
struct cx23885_kernel_ir {int rc; } ;
struct cx23885_dev {int sd_ir; struct cx23885_kernel_ir* kernel_ir; } ;
typedef int ssize_t ;
typedef int ir_core_event ;


 int ir ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_reset (int ) ;
 int ir_raw_event_store (int ,struct ir_raw_event*) ;
 int rx_read ;
 int v4l2_subdev_call (int ,int ,int ,int *,int,int*) ;

__attribute__((used)) static void cx23885_input_process_measurements(struct cx23885_dev *dev,
            bool overrun)
{
 struct cx23885_kernel_ir *kernel_ir = dev->kernel_ir;

 ssize_t num;
 int count, i;
 bool handle = 0;
 struct ir_raw_event ir_core_event[64];

 do {
  num = 0;
  v4l2_subdev_call(dev->sd_ir, ir, rx_read, (u8 *) ir_core_event,
     sizeof(ir_core_event), &num);

  count = num / sizeof(struct ir_raw_event);

  for (i = 0; i < count; i++) {
   ir_raw_event_store(kernel_ir->rc,
        &ir_core_event[i]);
   handle = 1;
  }
 } while (num != 0);

 if (overrun)
  ir_raw_event_reset(kernel_ir->rc);
 else if (handle)
  ir_raw_event_handle(kernel_ir->rc);
}
