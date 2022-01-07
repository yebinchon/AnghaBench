
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct hdpvr_device {scalar_t__ status; int v4l2_dev; int bulk_in_size; int bulk_in_endpointAddr; int udev; int io_mutex; int worker; int wait_buffer; } ;


 int BULK_URB_TIMEOUT ;
 int CTRL_STOP_STREAMING_VALUE ;
 int EAGAIN ;
 int GFP_KERNEL ;
 int MSG_BUFFER ;
 scalar_t__ STATUS_IDLE ;
 scalar_t__ STATUS_SHUTTING_DOWN ;
 scalar_t__ STATUS_STREAMING ;
 int flush_work (int *) ;
 int hdpvr_cancel_queue (struct hdpvr_device*) ;
 int hdpvr_config_call (struct hdpvr_device*,int ,int) ;
 int hdpvr_debug ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_bulk_msg (int ,int ,int *,int ,int*,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int v4l2_dbg (int ,int ,int *,char*,int,...) ;
 int v4l2_err (int *,char*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int hdpvr_stop_streaming(struct hdpvr_device *dev)
{
 int actual_length;
 uint c = 0;
 u8 *buf;

 if (dev->status == STATUS_IDLE)
  return 0;
 else if (dev->status != STATUS_STREAMING)
  return -EAGAIN;

 buf = kmalloc(dev->bulk_in_size, GFP_KERNEL);
 if (!buf)
  v4l2_err(&dev->v4l2_dev, "failed to allocate temporary buffer for emptying the internal device buffer. Next capture start will be slow\n");

 dev->status = STATUS_SHUTTING_DOWN;
 hdpvr_config_call(dev, CTRL_STOP_STREAMING_VALUE, 0x00);
 mutex_unlock(&dev->io_mutex);

 wake_up_interruptible(&dev->wait_buffer);
 msleep(50);

 flush_work(&dev->worker);

 mutex_lock(&dev->io_mutex);

 hdpvr_cancel_queue(dev);


 while (buf && ++c < 500 &&
        !usb_bulk_msg(dev->udev,
        usb_rcvbulkpipe(dev->udev,
          dev->bulk_in_endpointAddr),
        buf, dev->bulk_in_size, &actual_length,
        BULK_URB_TIMEOUT)) {
  v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
    "%2d: got %d bytes\n", c, actual_length);
 }
 kfree(buf);
 v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
   "used %d urbs to empty device buffers\n", c-1);
 msleep(10);

 dev->status = STATUS_IDLE;

 return 0;
}
