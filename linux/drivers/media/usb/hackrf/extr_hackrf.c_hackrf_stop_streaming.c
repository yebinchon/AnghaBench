
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; } ;
struct usb_interface {int dev; } ;
struct hackrf_dev {int v4l2_lock; int flags; struct usb_interface* intf; } ;


 int CMD_SET_TRANSCEIVER_MODE ;
 int RX_ON ;
 int TX_ON ;
 scalar_t__ V4L2_BUF_TYPE_SDR_CAPTURE ;
 int VB2_BUF_STATE_ERROR ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*) ;
 int hackrf_ctrl_msg (struct hackrf_dev*,int ,int ,int ,int *,int ) ;
 int hackrf_free_stream_bufs (struct hackrf_dev*) ;
 int hackrf_free_urbs (struct hackrf_dev*) ;
 int hackrf_kill_urbs (struct hackrf_dev*) ;
 int hackrf_return_all_buffers (struct vb2_queue*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hackrf_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void hackrf_stop_streaming(struct vb2_queue *vq)
{
 struct hackrf_dev *dev = vb2_get_drv_priv(vq);
 struct usb_interface *intf = dev->intf;

 dev_dbg(&intf->dev, "\n");

 mutex_lock(&dev->v4l2_lock);


 hackrf_ctrl_msg(dev, CMD_SET_TRANSCEIVER_MODE, 0, 0, ((void*)0), 0);

 hackrf_kill_urbs(dev);
 hackrf_free_urbs(dev);
 hackrf_free_stream_bufs(dev);

 hackrf_return_all_buffers(vq, VB2_BUF_STATE_ERROR);

 if (vq->type == V4L2_BUF_TYPE_SDR_CAPTURE)
  clear_bit(RX_ON, &dev->flags);
 else
  clear_bit(TX_ON, &dev->flags);

 mutex_unlock(&dev->v4l2_lock);
}
