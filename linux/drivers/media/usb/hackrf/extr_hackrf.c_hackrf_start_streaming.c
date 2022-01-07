
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; } ;
struct usb_interface {int dev; } ;
struct hackrf_dev {int v4l2_lock; int flags; scalar_t__ sequence; struct usb_interface* intf; } ;


 int CMD_SET_TRANSCEIVER_MODE ;
 int EBUSY ;
 int RX_ON ;
 int TX_ON ;
 scalar_t__ V4L2_BUF_TYPE_SDR_CAPTURE ;
 int VB2_BUF_STATE_QUEUED ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*,int) ;
 int hackrf_alloc_stream_bufs (struct hackrf_dev*) ;
 int hackrf_alloc_urbs (struct hackrf_dev*,int) ;
 int hackrf_ctrl_msg (struct hackrf_dev*,int ,unsigned int,int ,int *,int ) ;
 int hackrf_free_stream_bufs (struct hackrf_dev*) ;
 int hackrf_free_urbs (struct hackrf_dev*) ;
 int hackrf_kill_urbs (struct hackrf_dev*) ;
 int hackrf_return_all_buffers (struct vb2_queue*,int ) ;
 int hackrf_set_params (struct hackrf_dev*) ;
 int hackrf_submit_urbs (struct hackrf_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct hackrf_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int hackrf_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct hackrf_dev *dev = vb2_get_drv_priv(vq);
 struct usb_interface *intf = dev->intf;
 int ret;
 unsigned int mode;

 dev_dbg(&intf->dev, "count=%i\n", count);

 mutex_lock(&dev->v4l2_lock);


 if (vq->type == V4L2_BUF_TYPE_SDR_CAPTURE) {
  if (test_bit(TX_ON, &dev->flags)) {
   ret = -EBUSY;
   goto err_hackrf_return_all_buffers;
  }

  mode = 1;
  set_bit(RX_ON, &dev->flags);
 } else {
  if (test_bit(RX_ON, &dev->flags)) {
   ret = -EBUSY;
   goto err_hackrf_return_all_buffers;
  }

  mode = 2;
  set_bit(TX_ON, &dev->flags);
 }

 dev->sequence = 0;

 ret = hackrf_alloc_stream_bufs(dev);
 if (ret)
  goto err;

 ret = hackrf_alloc_urbs(dev, (mode == 1));
 if (ret)
  goto err;

 ret = hackrf_submit_urbs(dev);
 if (ret)
  goto err;

 ret = hackrf_set_params(dev);
 if (ret)
  goto err;


 ret = hackrf_ctrl_msg(dev, CMD_SET_TRANSCEIVER_MODE, mode, 0, ((void*)0), 0);
 if (ret)
  goto err;

 mutex_unlock(&dev->v4l2_lock);

 return 0;
err:
 hackrf_kill_urbs(dev);
 hackrf_free_urbs(dev);
 hackrf_free_stream_bufs(dev);
 clear_bit(RX_ON, &dev->flags);
 clear_bit(TX_ON, &dev->flags);
err_hackrf_return_all_buffers:
 hackrf_return_all_buffers(vq, VB2_BUF_STATE_QUEUED);
 mutex_unlock(&dev->v4l2_lock);
 dev_dbg(&intf->dev, "failed=%d\n", ret);
 return ret;
}
