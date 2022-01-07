
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct cx23885_dev* drv_priv; } ;
struct cx23885_dev {int ts1; } ;


 int CX2341X_ENC_STOP_CAPTURE ;
 int CX23885_END_NOW ;
 int CX23885_MPEG_CAPTURE ;
 int CX23885_RAW_BITS_NONE ;
 int cx23885_417_check_encoder (struct cx23885_dev*) ;
 int cx23885_api_cmd (struct cx23885_dev*,int ,int,int ,int ,int ,int ) ;
 int cx23885_cancel_buffers (int *) ;
 int msleep (int) ;

__attribute__((used)) static void cx23885_stop_streaming(struct vb2_queue *q)
{
 struct cx23885_dev *dev = q->drv_priv;


 cx23885_api_cmd(dev, CX2341X_ENC_STOP_CAPTURE, 3, 0,
   CX23885_END_NOW, CX23885_MPEG_CAPTURE,
   CX23885_RAW_BITS_NONE);

 msleep(500);
 cx23885_417_check_encoder(dev);
 cx23885_cancel_buffers(&dev->ts1);
}
