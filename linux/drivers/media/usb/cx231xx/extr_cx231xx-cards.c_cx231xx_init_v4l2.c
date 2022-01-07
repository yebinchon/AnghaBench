
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u16 ;
struct usb_interface {int num_altsetting; TYPE_10__* altsetting; } ;
struct usb_device {int dev; TYPE_6__* actconfig; } ;
struct TYPE_14__ {int num_alt; int* alt_max_pkt_size; int end_point_addr; } ;
struct TYPE_18__ {TYPE_4__* hs_config_info; } ;
struct TYPE_13__ {int num_alt; int* alt_max_pkt_size; int end_point_addr; } ;
struct TYPE_15__ {int num_alt; int* alt_max_pkt_size; int end_point_addr; } ;
struct cx231xx {int max_iad_interface_count; TYPE_1__ sliced_cc_mode; int dev; TYPE_5__ current_pcb_config; TYPE_11__ vbi_mode; TYPE_2__ video_mode; } ;
struct TYPE_21__ {int wMaxPacketSize; int bEndpointAddress; } ;
struct TYPE_22__ {TYPE_8__ desc; } ;
struct TYPE_20__ {int bNumEndpoints; } ;
struct TYPE_19__ {struct usb_interface** interface; } ;
struct TYPE_16__ {int video_index; int vanc_index; int hanc_index; } ;
struct TYPE_17__ {TYPE_3__ interface_info; } ;
struct TYPE_12__ {TYPE_9__* endpoint; TYPE_7__ desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int ,int) ;
 void* devm_kmalloc_array (int *,int,int,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int cx231xx_init_v4l2(struct cx231xx *dev,
        struct usb_device *udev,
        struct usb_interface *interface,
        int isoc_pipe)
{
 struct usb_interface *uif;
 int i, idx;




 idx = dev->current_pcb_config.hs_config_info[0].interface_info.video_index + 1;
 if (idx >= dev->max_iad_interface_count) {
  dev_err(dev->dev,
   "Video PCB interface #%d doesn't exist\n", idx);
  return -ENODEV;
 }

 uif = udev->actconfig->interface[idx];

 if (uif->altsetting[0].desc.bNumEndpoints < isoc_pipe + 1)
  return -ENODEV;

 dev->video_mode.end_point_addr = uif->altsetting[0].endpoint[isoc_pipe].desc.bEndpointAddress;
 dev->video_mode.num_alt = uif->num_altsetting;

 dev_info(dev->dev,
   "video EndPoint Addr 0x%x, Alternate settings: %i\n",
   dev->video_mode.end_point_addr,
   dev->video_mode.num_alt);

 dev->video_mode.alt_max_pkt_size = devm_kmalloc_array(&udev->dev, 32, dev->video_mode.num_alt, GFP_KERNEL);
 if (dev->video_mode.alt_max_pkt_size == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < dev->video_mode.num_alt; i++) {
  u16 tmp;

  if (uif->altsetting[i].desc.bNumEndpoints < isoc_pipe + 1)
   return -ENODEV;

  tmp = le16_to_cpu(uif->altsetting[i].endpoint[isoc_pipe].desc.wMaxPacketSize);
  dev->video_mode.alt_max_pkt_size[i] = (tmp & 0x07ff) * (((tmp & 0x1800) >> 11) + 1);
  dev_dbg(dev->dev,
   "Alternate setting %i, max size= %i\n", i,
   dev->video_mode.alt_max_pkt_size[i]);
 }



 idx = dev->current_pcb_config.hs_config_info[0].interface_info.vanc_index + 1;
 if (idx >= dev->max_iad_interface_count) {
  dev_err(dev->dev,
   "VBI PCB interface #%d doesn't exist\n", idx);
  return -ENODEV;
 }
 uif = udev->actconfig->interface[idx];

 if (uif->altsetting[0].desc.bNumEndpoints < isoc_pipe + 1)
  return -ENODEV;

 dev->vbi_mode.end_point_addr =
     uif->altsetting[0].endpoint[isoc_pipe].desc.
   bEndpointAddress;

 dev->vbi_mode.num_alt = uif->num_altsetting;
 dev_info(dev->dev,
   "VBI EndPoint Addr 0x%x, Alternate settings: %i\n",
   dev->vbi_mode.end_point_addr,
   dev->vbi_mode.num_alt);


 dev->vbi_mode.alt_max_pkt_size = devm_kmalloc_array(&udev->dev, 32, dev->vbi_mode.num_alt, GFP_KERNEL);
 if (dev->vbi_mode.alt_max_pkt_size == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < dev->vbi_mode.num_alt; i++) {
  u16 tmp;

  if (uif->altsetting[i].desc.bNumEndpoints < isoc_pipe + 1)
   return -ENODEV;

  tmp = le16_to_cpu(uif->altsetting[i].endpoint[isoc_pipe].
    desc.wMaxPacketSize);
  dev->vbi_mode.alt_max_pkt_size[i] =
      (tmp & 0x07ff) * (((tmp & 0x1800) >> 11) + 1);
  dev_dbg(dev->dev,
   "Alternate setting %i, max size= %i\n", i,
   dev->vbi_mode.alt_max_pkt_size[i]);
 }




 idx = dev->current_pcb_config.hs_config_info[0].interface_info.hanc_index + 1;
 if (idx >= dev->max_iad_interface_count) {
  dev_err(dev->dev,
   "Sliced CC PCB interface #%d doesn't exist\n", idx);
  return -ENODEV;
 }
 uif = udev->actconfig->interface[idx];

 if (uif->altsetting[0].desc.bNumEndpoints < isoc_pipe + 1)
  return -ENODEV;

 dev->sliced_cc_mode.end_point_addr =
     uif->altsetting[0].endpoint[isoc_pipe].desc.
   bEndpointAddress;

 dev->sliced_cc_mode.num_alt = uif->num_altsetting;
 dev_info(dev->dev,
   "sliced CC EndPoint Addr 0x%x, Alternate settings: %i\n",
   dev->sliced_cc_mode.end_point_addr,
   dev->sliced_cc_mode.num_alt);
 dev->sliced_cc_mode.alt_max_pkt_size = devm_kmalloc_array(&udev->dev, 32, dev->sliced_cc_mode.num_alt, GFP_KERNEL);
 if (dev->sliced_cc_mode.alt_max_pkt_size == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < dev->sliced_cc_mode.num_alt; i++) {
  u16 tmp;

  if (uif->altsetting[i].desc.bNumEndpoints < isoc_pipe + 1)
   return -ENODEV;

  tmp = le16_to_cpu(uif->altsetting[i].endpoint[isoc_pipe].
    desc.wMaxPacketSize);
  dev->sliced_cc_mode.alt_max_pkt_size[i] =
      (tmp & 0x07ff) * (((tmp & 0x1800) >> 11) + 1);
  dev_dbg(dev->dev,
   "Alternate setting %i, max size= %i\n", i,
   dev->sliced_cc_mode.alt_max_pkt_size[i]);
 }

 return 0;
}
