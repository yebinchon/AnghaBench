
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_usbvision {int dev_model; double radio_freq; int tv_freq; scalar_t__ ctl_input; int video_inputs; int tvnorm_id; scalar_t__ vin_reg2_preset; int palette; } ;
struct TYPE_2__ {scalar_t__ audio_channels; int video_channels; int video_norm; scalar_t__ vin_reg2; scalar_t__ vin_reg2_override; } ;


 int usbvision_audio_off (struct usb_usbvision*) ;
 TYPE_1__* usbvision_device_data ;
 int usbvision_i2c_register (struct usb_usbvision*) ;
 int usbvision_power_on (struct usb_usbvision*) ;
 int * usbvision_v4l2_format ;

__attribute__((used)) static void usbvision_configure_video(struct usb_usbvision *usbvision)
{
 int model;

 if (!usbvision)
  return;

 model = usbvision->dev_model;
 usbvision->palette = usbvision_v4l2_format[2];

 if (usbvision_device_data[usbvision->dev_model].vin_reg2_override) {
  usbvision->vin_reg2_preset =
   usbvision_device_data[usbvision->dev_model].vin_reg2;
 } else {
  usbvision->vin_reg2_preset = 0;
 }

 usbvision->tvnorm_id = usbvision_device_data[model].video_norm;
 usbvision->video_inputs = usbvision_device_data[model].video_channels;
 usbvision->ctl_input = 0;
 usbvision->radio_freq = 87.5 * 16000;
 usbvision->tv_freq = 400 * 16;



 if (usbvision_device_data[model].audio_channels > 0)
  usbvision_audio_off(usbvision);

 usbvision_power_on(usbvision);
 usbvision_i2c_register(usbvision);
}
