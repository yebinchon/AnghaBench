
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int ac97; } ;
struct TYPE_4__ {scalar_t__ mute_gpio; scalar_t__ is_em2800; } ;
struct em28xx {int ctl_ainput; TYPE_2__ audio_mode; int ctl_input; TYPE_1__ board; scalar_t__ mute; scalar_t__ has_msp34xx; } ;
struct TYPE_6__ {scalar_t__ gpio; } ;


 int EM2800_AUDIO_SRC_LINE ;
 int EM2800_AUDIO_SRC_TUNER ;
 int EM2800_R08_AUDIOSRC ;

 int EM28XX_AUDIO_SRC_LINE ;
 int EM28XX_AUDIO_SRC_TUNER ;

 int EM28XX_R0E_AUDIOSRC ;
 TYPE_3__* INPUT (int ) ;
 int em28xx_gpio_set (struct em28xx*,scalar_t__) ;
 int em28xx_write_reg_bits (struct em28xx*,int ,int ,int) ;
 int em28xx_write_regs (struct em28xx*,int ,int *,int) ;
 int set_ac97_input (struct em28xx*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int em28xx_set_audio_source(struct em28xx *dev)
{
 int ret;
 u8 input;

 if (dev->board.is_em2800) {
  if (dev->ctl_ainput == 129)
   input = EM2800_AUDIO_SRC_TUNER;
  else
   input = EM2800_AUDIO_SRC_LINE;

  ret = em28xx_write_regs(dev, EM2800_R08_AUDIOSRC, &input, 1);
  if (ret < 0)
   return ret;
 }

 if (dev->has_msp34xx) {
  input = EM28XX_AUDIO_SRC_TUNER;
 } else {
  switch (dev->ctl_ainput) {
  case 129:
   input = EM28XX_AUDIO_SRC_TUNER;
   break;
  default:
   input = EM28XX_AUDIO_SRC_LINE;
   break;
  }
 }

 if (dev->board.mute_gpio && dev->mute)
  em28xx_gpio_set(dev, dev->board.mute_gpio);
 else
  em28xx_gpio_set(dev, INPUT(dev->ctl_input)->gpio);

 ret = em28xx_write_reg_bits(dev, EM28XX_R0E_AUDIOSRC, input, 0xc0);
 if (ret < 0)
  return ret;
 usleep_range(10000, 11000);

 switch (dev->audio_mode.ac97) {
 case 128:
  break;
 default:
  ret = set_ac97_input(dev);
 }

 return ret;
}
