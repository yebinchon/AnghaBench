
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_7__ {int capture_source_addr; int mixer_lock; int * capture_source; } ;
typedef TYPE_3__ snd_card_saa7134_t ;


 TYPE_3__* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_saa7134_capsrc_get(struct snd_kcontrol * kcontrol,
      struct snd_ctl_elem_value * ucontrol)
{
 snd_card_saa7134_t *chip = snd_kcontrol_chip(kcontrol);
 int addr = kcontrol->private_value;

 spin_lock_irq(&chip->mixer_lock);
 if (chip->capture_source_addr == addr) {
  ucontrol->value.integer.value[0] = chip->capture_source[0];
  ucontrol->value.integer.value[1] = chip->capture_source[1];
 } else {
  ucontrol->value.integer.value[0] = 0;
  ucontrol->value.integer.value[1] = 0;
 }
 spin_unlock_irq(&chip->mixer_lock);

 return 0;
}
