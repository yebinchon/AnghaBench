
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct v4l2_subdev {int ctrl_handler; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct spi_master {int num_chipselect; int transfer_one_message; scalar_t__ bus_num; } ;
struct spi_board_info {char* modalias; int max_speed_hz; int chip_select; int bus_num; } ;
struct msi2500_frame_buf {int dummy; } ;
struct TYPE_18__ {TYPE_8__* ctrl_handler; int release; } ;
struct TYPE_19__ {int error; } ;
struct TYPE_16__ {int device_caps; int * lock; TYPE_5__* v4l2_dev; TYPE_4__* queue; } ;
struct TYPE_17__ {int io_modes; int buf_struct_size; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct msi2500_dev* drv_priv; int type; } ;
struct msi2500_dev {int num_formats; TYPE_5__ v4l2_dev; struct spi_master* master; TYPE_8__ hdl; int * dev; TYPE_1__ vdev; int v4l2_lock; struct v4l2_subdev* v4l2_subdev; int vb_queue_lock; TYPE_4__ vb_queue; int buffersize; int pixelformat; int f_adc; int udev; int queued_bufs; int queued_bufs_lock; } ;
struct TYPE_15__ {int rangelow; } ;
struct TYPE_14__ {int buffersize; int pixelformat; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_FORMATS ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_SDR_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_SDR_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VFL_TYPE_SDR ;
 TYPE_13__* bands ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int dev_notice (int *,char*) ;
 TYPE_12__* formats ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct msi2500_dev*) ;
 struct msi2500_dev* kzalloc (int,int ) ;
 int msi2500_emulated_fmt ;
 TYPE_1__ msi2500_template ;
 int msi2500_transfer_one_message ;
 int msi2500_vb2_ops ;
 int msi2500_video_release ;
 int mutex_init (int *) ;
 struct spi_master* spi_alloc_master (int *,int ) ;
 int spi_master_put (struct spi_master*) ;
 int spi_master_set_devdata (struct spi_master*,struct msi2500_dev*) ;
 int spi_register_master (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_add_handler (TYPE_8__*,int ,int *,int) ;
 int v4l2_ctrl_handler_free (TYPE_8__*) ;
 int v4l2_ctrl_handler_init (TYPE_8__*,int ) ;
 int v4l2_device_register (int *,TYPE_5__*) ;
 int v4l2_device_unregister (TYPE_5__*) ;
 struct v4l2_subdev* v4l2_spi_new_subdev (TYPE_5__*,struct spi_master*,struct spi_board_info*) ;
 int vb2_queue_init (TYPE_4__*) ;
 int vb2_vmalloc_memops ;
 int video_device_node_name (TYPE_1__*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct msi2500_dev*) ;

__attribute__((used)) static int msi2500_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct msi2500_dev *dev;
 struct v4l2_subdev *sd;
 struct spi_master *master;
 int ret;
 static struct spi_board_info board_info = {
  .modalias = "msi001",
  .bus_num = 0,
  .chip_select = 0,
  .max_speed_hz = 12000000,
 };

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto err;
 }

 mutex_init(&dev->v4l2_lock);
 mutex_init(&dev->vb_queue_lock);
 spin_lock_init(&dev->queued_bufs_lock);
 INIT_LIST_HEAD(&dev->queued_bufs);
 dev->dev = &intf->dev;
 dev->udev = interface_to_usbdev(intf);
 dev->f_adc = bands[0].rangelow;
 dev->pixelformat = formats[0].pixelformat;
 dev->buffersize = formats[0].buffersize;
 dev->num_formats = NUM_FORMATS;
 if (!msi2500_emulated_fmt)
  dev->num_formats -= 2;


 dev->vb_queue.type = V4L2_BUF_TYPE_SDR_CAPTURE;
 dev->vb_queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
 dev->vb_queue.drv_priv = dev;
 dev->vb_queue.buf_struct_size = sizeof(struct msi2500_frame_buf);
 dev->vb_queue.ops = &msi2500_vb2_ops;
 dev->vb_queue.mem_ops = &vb2_vmalloc_memops;
 dev->vb_queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 ret = vb2_queue_init(&dev->vb_queue);
 if (ret) {
  dev_err(dev->dev, "Could not initialize vb2 queue\n");
  goto err_free_mem;
 }


 dev->vdev = msi2500_template;
 dev->vdev.queue = &dev->vb_queue;
 dev->vdev.queue->lock = &dev->vb_queue_lock;
 video_set_drvdata(&dev->vdev, dev);


 dev->v4l2_dev.release = msi2500_video_release;
 ret = v4l2_device_register(&intf->dev, &dev->v4l2_dev);
 if (ret) {
  dev_err(dev->dev, "Failed to register v4l2-device (%d)\n", ret);
  goto err_free_mem;
 }


 master = spi_alloc_master(dev->dev, 0);
 if (master == ((void*)0)) {
  ret = -ENOMEM;
  goto err_unregister_v4l2_dev;
 }

 dev->master = master;
 master->bus_num = 0;
 master->num_chipselect = 1;
 master->transfer_one_message = msi2500_transfer_one_message;
 spi_master_set_devdata(master, dev);
 ret = spi_register_master(master);
 if (ret) {
  spi_master_put(master);
  goto err_unregister_v4l2_dev;
 }


 sd = v4l2_spi_new_subdev(&dev->v4l2_dev, master, &board_info);
 dev->v4l2_subdev = sd;
 if (sd == ((void*)0)) {
  dev_err(dev->dev, "cannot get v4l2 subdevice\n");
  ret = -ENODEV;
  goto err_unregister_master;
 }


 v4l2_ctrl_handler_init(&dev->hdl, 0);
 if (dev->hdl.error) {
  ret = dev->hdl.error;
  dev_err(dev->dev, "Could not initialize controls\n");
  goto err_free_controls;
 }


 v4l2_ctrl_add_handler(&dev->hdl, sd->ctrl_handler, ((void*)0), 1);

 dev->v4l2_dev.ctrl_handler = &dev->hdl;
 dev->vdev.v4l2_dev = &dev->v4l2_dev;
 dev->vdev.lock = &dev->v4l2_lock;
 dev->vdev.device_caps = V4L2_CAP_SDR_CAPTURE | V4L2_CAP_STREAMING |
    V4L2_CAP_READWRITE | V4L2_CAP_TUNER;

 ret = video_register_device(&dev->vdev, VFL_TYPE_SDR, -1);
 if (ret) {
  dev_err(dev->dev,
   "Failed to register as video device (%d)\n", ret);
  goto err_unregister_v4l2_dev;
 }
 dev_info(dev->dev, "Registered as %s\n",
   video_device_node_name(&dev->vdev));
 dev_notice(dev->dev,
     "SDR API is still slightly experimental and functionality changes may follow\n");
 return 0;
err_free_controls:
 v4l2_ctrl_handler_free(&dev->hdl);
err_unregister_master:
 spi_unregister_master(dev->master);
err_unregister_v4l2_dev:
 v4l2_device_unregister(&dev->v4l2_dev);
err_free_mem:
 kfree(dev);
err:
 return ret;
}
