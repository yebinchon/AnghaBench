
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cx18 {int hw_flags; TYPE_1__* card; void* sd_extmux; void* sd_av; } ;
struct TYPE_2__ {int hw_all; int const hw_muxer; } ;







 void* cx18_find_hw (struct cx18*,int const) ;
 int cx18_gpio_register (struct cx18*,int) ;
 int cx18_i2c_register (struct cx18*,int) ;

__attribute__((used)) static void cx18_init_subdevs(struct cx18 *cx)
{
 u32 hw = cx->card->hw_all;
 u32 device;
 int i;

 for (i = 0, device = 1; i < 32; i++, device <<= 1) {

  if (!(device & hw))
   continue;

  switch (device) {
  case 131:
  case 128:

   cx->hw_flags |= device;
   break;
  case 132:


   cx->hw_flags |= device;
   break;
  case 129:




   break;
  case 130:
   if (cx18_gpio_register(cx, device) == 0)
    cx->hw_flags |= device;
   break;
  default:
   if (cx18_i2c_register(cx, i) == 0)
    cx->hw_flags |= device;
   break;
  }
 }

 if (cx->hw_flags & 132)
  cx->sd_av = cx18_find_hw(cx, 132);

 if (cx->card->hw_muxer != 0)
  cx->sd_extmux = cx18_find_hw(cx, cx->card->hw_muxer);
}
