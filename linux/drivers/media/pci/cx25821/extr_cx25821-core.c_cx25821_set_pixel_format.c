
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cx25821_dev {TYPE_2__* channels; } ;
struct TYPE_4__ {int pixel_formats; TYPE_1__* sram_channels; } ;
struct TYPE_3__ {int pix_frmt; } ;


 int cx_write (int ,int ) ;

void cx25821_set_pixel_format(struct cx25821_dev *dev, int channel_select,
         u32 format)
{
 if (channel_select <= 7 && channel_select >= 0) {
  cx_write(dev->channels[channel_select].sram_channels->pix_frmt,
    format);
 }
 dev->channels[channel_select].pixel_formats = format;
}
