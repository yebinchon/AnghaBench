
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx88_core {scalar_t__ sd_wm8775; } ;
struct cx88_audio_dev {int reg_lock; struct cx88_core* core; } ;


 int AUD_VOL_CTL ;
 int SHADOW_AUD_VOL_CTL ;
 int V4L2_CID_AUDIO_MUTE ;
 int cx_read (int ) ;
 int cx_swrite (int ,int ,int) ;
 struct cx88_audio_dev* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wm8775_s_ctrl (struct cx88_core*,int ,int) ;

__attribute__((used)) static int snd_cx88_switch_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *value)
{
 struct cx88_audio_dev *chip = snd_kcontrol_chip(kcontrol);
 struct cx88_core *core = chip->core;
 u32 bit = kcontrol->private_value;
 int ret = 0;
 u32 vol;

 spin_lock_irq(&chip->reg_lock);
 vol = cx_read(AUD_VOL_CTL);
 if (value->value.integer.value[0] != !(vol & bit)) {
  vol ^= bit;
  cx_swrite(SHADOW_AUD_VOL_CTL, AUD_VOL_CTL, vol);

  if (core->sd_wm8775 && ((1 << 6) == bit))
   wm8775_s_ctrl(core,
          V4L2_CID_AUDIO_MUTE, 0 != (vol & bit));
  ret = 1;
 }
 spin_unlock_irq(&chip->reg_lock);
 return ret;
}
