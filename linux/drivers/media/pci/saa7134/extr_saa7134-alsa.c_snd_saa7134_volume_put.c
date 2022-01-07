
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int* value; } ;
struct TYPE_7__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct saa7134_dev {TYPE_3__* pci; } ;
struct TYPE_9__ {int** mixer_volume; int mixer_lock; struct saa7134_dev* dev; } ;
typedef TYPE_4__ snd_card_saa7134_t ;
struct TYPE_8__ {int device; } ;
 int SAA7134_ANALOG_IO_SELECT ;
 int saa_andorb (int,int,int) ;
 TYPE_4__* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_saa7134_volume_put(struct snd_kcontrol * kcontrol,
      struct snd_ctl_elem_value * ucontrol)
{
 snd_card_saa7134_t *chip = snd_kcontrol_chip(kcontrol);
 struct saa7134_dev *dev = chip->dev;

 int change, addr = kcontrol->private_value;
 int left, right;

 left = ucontrol->value.integer.value[0];
 if (left < 0)
  left = 0;
 if (left > 20)
  left = 20;
 right = ucontrol->value.integer.value[1];
 if (right < 0)
  right = 0;
 if (right > 20)
  right = 20;
 spin_lock_irq(&chip->mixer_lock);
 change = 0;
 if (chip->mixer_volume[addr][0] != left) {
  change = 1;
  right = left;
 }
 if (chip->mixer_volume[addr][1] != right) {
  change = 1;
  left = right;
 }
 if (change) {
  switch (dev->pci->device) {
   case 129:
    switch (addr) {
     case 131:
      left = 20;
      break;
     case 133:
      saa_andorb(SAA7134_ANALOG_IO_SELECT, 0x10,
          (left > 10) ? 0x00 : 0x10);
      break;
     case 132:
      saa_andorb(SAA7134_ANALOG_IO_SELECT, 0x20,
          (left > 10) ? 0x00 : 0x20);
      break;
    }
    break;
   case 130:
   case 128:
    switch (addr) {
     case 131:
      left = 20;
      break;
     case 133:
      saa_andorb(0x0594, 0x10,
          (left > 10) ? 0x00 : 0x10);
      break;
     case 132:
      saa_andorb(0x0594, 0x20,
          (left > 10) ? 0x00 : 0x20);
      break;
    }
    break;
  }
  chip->mixer_volume[addr][0] = left;
  chip->mixer_volume[addr][1] = right;
 }
 spin_unlock_irq(&chip->mixer_lock);
 return change;
}
