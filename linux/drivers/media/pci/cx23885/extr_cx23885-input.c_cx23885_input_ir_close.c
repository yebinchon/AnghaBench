
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct cx23885_kernel_ir* priv; } ;
struct cx23885_kernel_ir {int * cx; } ;


 int cx23885_input_ir_stop (int *) ;

__attribute__((used)) static void cx23885_input_ir_close(struct rc_dev *rc)
{
 struct cx23885_kernel_ir *kernel_ir = rc->priv;

 if (kernel_ir->cx != ((void*)0))
  cx23885_input_ir_stop(kernel_ir->cx);
}
