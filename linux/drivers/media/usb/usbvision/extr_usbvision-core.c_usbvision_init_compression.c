
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int last_isoc_frame_num; int compr_level; int last_compr_level; int request_intra; scalar_t__ isoc_measure_bandwidth_count; scalar_t__ isoc_urb_count; scalar_t__ isoc_skip_count; scalar_t__ isoc_packet_count; scalar_t__ isoc_data_count; } ;



__attribute__((used)) static int usbvision_init_compression(struct usb_usbvision *usbvision)
{
 usbvision->last_isoc_frame_num = -1;
 usbvision->isoc_data_count = 0;
 usbvision->isoc_packet_count = 0;
 usbvision->isoc_skip_count = 0;
 usbvision->compr_level = 50;
 usbvision->last_compr_level = -1;
 usbvision->isoc_urb_count = 0;
 usbvision->request_intra = 1;
 usbvision->isoc_measure_bandwidth_count = 0;

 return 0;
}
