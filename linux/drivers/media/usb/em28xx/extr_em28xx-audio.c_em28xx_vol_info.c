
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct em28xx {scalar_t__ disconnected; } ;


 int ENODEV ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct em28xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int em28xx_vol_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *info)
{
 struct em28xx *dev = snd_kcontrol_chip(kcontrol);

 if (dev->disconnected)
  return -ENODEV;

 info->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 info->count = 2;
 info->value.integer.min = 0;
 info->value.integer.max = 0x1f;

 return 0;
}
