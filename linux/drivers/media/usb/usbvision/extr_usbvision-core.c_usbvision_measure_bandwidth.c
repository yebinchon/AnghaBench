
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int isoc_measure_bandwidth_count; int isoc_packet_size; int isoc_packet_count; int used_bandwidth; int isoc_data_count; int isoc_skip_count; } ;



__attribute__((used)) static int usbvision_measure_bandwidth(struct usb_usbvision *usbvision)
{
 if (usbvision->isoc_measure_bandwidth_count < 2) {
  usbvision->isoc_measure_bandwidth_count++;
  return 0;
 }
 if ((usbvision->isoc_packet_size > 0) && (usbvision->isoc_packet_count > 0)) {
  usbvision->used_bandwidth = usbvision->isoc_data_count /
     (usbvision->isoc_packet_count + usbvision->isoc_skip_count) *
     100 / usbvision->isoc_packet_size;
 }
 usbvision->isoc_measure_bandwidth_count = 0;
 usbvision->isoc_data_count = 0;
 usbvision->isoc_packet_count = 0;
 usbvision->isoc_skip_count = 0;
 return 0;
}
