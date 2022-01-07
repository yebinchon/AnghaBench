
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct cx23885_tsport* drv_priv; } ;
struct cx23885_tsport {int dummy; } ;


 int cx23885_cancel_buffers (struct cx23885_tsport*) ;

__attribute__((used)) static void cx23885_stop_streaming(struct vb2_queue *q)
{
 struct cx23885_tsport *port = q->drv_priv;

 cx23885_cancel_buffers(port);
}
