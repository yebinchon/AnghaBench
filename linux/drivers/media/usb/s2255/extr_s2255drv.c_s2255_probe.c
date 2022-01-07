
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_8__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; } ;
struct usb_device_id {int idProduct; } ;
struct s2255_vc {int idx; int vb_lock; int qlock; int wait_vidstatus; int wait_setmode; struct s2255_dev* dev; } ;
struct s2255_fw {int dummy; } ;
struct s2255_dev {int pid; int dsp_fw_ver; struct s2255_dev* cmdbuf; int lock; struct s2255_dev* fw_data; TYPE_3__* udev; int timer; int fw_urb; struct s2255_dev* pfw_data; TYPE_6__* fw; struct s2255_vc* vc; int wait_fw; scalar_t__ read_endpoint; struct usb_interface* interface; int cmdlock; int num_channels; } ;
typedef scalar_t__ __le32 ;
struct TYPE_11__ {int size; int * data; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {struct usb_endpoint_descriptor desc; } ;


 int CHUNK_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int FIRMWARE_FILE_NAME ;
 int GFP_KERNEL ;
 int MAX_CHANNELS ;
 int S2255_CMDBUF_SIZE ;
 int S2255_CUR_DSP_FWVER ;
 scalar_t__ S2255_FW_MARKER ;
 int S2255_MIN_DSP_COLORFILTER ;
 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct s2255_dev*) ;
 void* kzalloc (int,int ) ;
 int le32_to_cpu (scalar_t__) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int pr_info (char*,...) ;
 int pr_warn (char*,int) ;
 int release_firmware (TYPE_6__*) ;
 scalar_t__ request_firmware (TYPE_6__**,int ,int *) ;
 int s2255_board_init (struct s2255_dev*) ;
 int s2255_board_shutdown (struct s2255_dev*) ;
 int s2255_dev_err (int *,char*) ;
 int s2255_fwload_start (struct s2255_dev*) ;
 int s2255_probe_v4l (struct s2255_dev*) ;
 int s2255_timer ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 int usb_free_urb (int ) ;
 TYPE_3__* usb_get_dev (int ) ;
 int usb_put_dev (TYPE_3__*) ;
 int usb_reset_device (TYPE_3__*) ;

__attribute__((used)) static int s2255_probe(struct usb_interface *interface,
         const struct usb_device_id *id)
{
 struct s2255_dev *dev = ((void*)0);
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int i;
 int retval = -ENOMEM;
 __le32 *pdata;
 int fw_size;


 dev = kzalloc(sizeof(struct s2255_dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  s2255_dev_err(&interface->dev, "out of memory\n");
  return -ENOMEM;
 }

 dev->cmdbuf = kzalloc(S2255_CMDBUF_SIZE, GFP_KERNEL);
 if (dev->cmdbuf == ((void*)0)) {
  s2255_dev_err(&interface->dev, "out of memory\n");
  goto errorFWDATA1;
 }

 atomic_set(&dev->num_channels, 0);
 dev->pid = id->idProduct;
 dev->fw_data = kzalloc(sizeof(struct s2255_fw), GFP_KERNEL);
 if (!dev->fw_data)
  goto errorFWDATA1;
 mutex_init(&dev->lock);
 mutex_init(&dev->cmdlock);

 dev->udev = usb_get_dev(interface_to_usbdev(interface));
 if (dev->udev == ((void*)0)) {
  dev_err(&interface->dev, "null usb device\n");
  retval = -ENODEV;
  goto errorUDEV;
 }
 dev_dbg(&interface->dev, "dev: %p, udev %p interface %p\n",
  dev, dev->udev, interface);
 dev->interface = interface;

 iface_desc = interface->cur_altsetting;
 dev_dbg(&interface->dev, "num EP: %d\n",
  iface_desc->desc.bNumEndpoints);
 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;
  if (!dev->read_endpoint && usb_endpoint_is_bulk_in(endpoint)) {

   dev->read_endpoint = endpoint->bEndpointAddress;
  }
 }

 if (!dev->read_endpoint) {
  dev_err(&interface->dev, "Could not find bulk-in endpoint\n");
  goto errorEP;
 }
 timer_setup(&dev->timer, s2255_timer, 0);
 init_waitqueue_head(&dev->fw_data->wait_fw);
 for (i = 0; i < MAX_CHANNELS; i++) {
  struct s2255_vc *vc = &dev->vc[i];
  vc->idx = i;
  vc->dev = dev;
  init_waitqueue_head(&vc->wait_setmode);
  init_waitqueue_head(&vc->wait_vidstatus);
  spin_lock_init(&vc->qlock);
  mutex_init(&vc->vb_lock);
 }

 dev->fw_data->fw_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->fw_data->fw_urb)
  goto errorFWURB;

 dev->fw_data->pfw_data = kzalloc(CHUNK_SIZE, GFP_KERNEL);
 if (!dev->fw_data->pfw_data) {
  dev_err(&interface->dev, "out of memory!\n");
  goto errorFWDATA2;
 }

 if (request_firmware(&dev->fw_data->fw,
        FIRMWARE_FILE_NAME, &dev->udev->dev)) {
  dev_err(&interface->dev, "sensoray 2255 failed to get firmware\n");
  goto errorREQFW;
 }

 fw_size = dev->fw_data->fw->size;
 pdata = (__le32 *) &dev->fw_data->fw->data[fw_size - 8];

 if (*pdata != S2255_FW_MARKER) {
  dev_err(&interface->dev, "Firmware invalid.\n");
  retval = -ENODEV;
  goto errorFWMARKER;
 } else {

  __le32 *pRel;
  pRel = (__le32 *) &dev->fw_data->fw->data[fw_size - 4];
  pr_info("s2255 dsp fw version %x\n", le32_to_cpu(*pRel));
  dev->dsp_fw_ver = le32_to_cpu(*pRel);
  if (dev->dsp_fw_ver < S2255_CUR_DSP_FWVER)
   pr_info("s2255: f2255usb.bin out of date.\n");
  if (dev->pid == 0x2257 &&
    dev->dsp_fw_ver < S2255_MIN_DSP_COLORFILTER)
   pr_warn("2257 needs firmware %d or above.\n",
    S2255_MIN_DSP_COLORFILTER);
 }
 usb_reset_device(dev->udev);

 retval = s2255_board_init(dev);
 if (retval)
  goto errorBOARDINIT;
 s2255_fwload_start(dev);

 retval = s2255_probe_v4l(dev);
 if (retval)
  goto errorBOARDINIT;
 dev_info(&interface->dev, "Sensoray 2255 detected\n");
 return 0;
errorBOARDINIT:
 s2255_board_shutdown(dev);
errorFWMARKER:
 release_firmware(dev->fw_data->fw);
errorREQFW:
 kfree(dev->fw_data->pfw_data);
errorFWDATA2:
 usb_free_urb(dev->fw_data->fw_urb);
errorFWURB:
 del_timer_sync(&dev->timer);
errorEP:
 usb_put_dev(dev->udev);
errorUDEV:
 kfree(dev->fw_data);
 mutex_destroy(&dev->lock);
errorFWDATA1:
 kfree(dev->cmdbuf);
 kfree(dev);
 pr_warn("Sensoray 2255 driver load failed: 0x%x\n", retval);
 return retval;
}
