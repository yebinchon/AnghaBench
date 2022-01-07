
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_card {int mixername; } ;
struct TYPE_8__ {int capture_source_addr; struct snd_kcontrol** capture_ctl; struct snd_card* card; } ;
typedef TYPE_1__ snd_card_saa7134_t ;
struct TYPE_9__ {int private_value; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int MIXER_ADDR_UNSELECTED ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* snd_saa7134_capture_controls ;
 TYPE_2__* snd_saa7134_volume_controls ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int snd_card_saa7134_new_mixer(snd_card_saa7134_t * chip)
{
 struct snd_card *card = chip->card;
 struct snd_kcontrol *kcontrol;
 unsigned int idx;
 int err, addr;

 strscpy(card->mixername, "SAA7134 Mixer", sizeof(card->mixername));

 for (idx = 0; idx < ARRAY_SIZE(snd_saa7134_volume_controls); idx++) {
  kcontrol = snd_ctl_new1(&snd_saa7134_volume_controls[idx],
     chip);
  err = snd_ctl_add(card, kcontrol);
  if (err < 0)
   return err;
 }

 for (idx = 0; idx < ARRAY_SIZE(snd_saa7134_capture_controls); idx++) {
  kcontrol = snd_ctl_new1(&snd_saa7134_capture_controls[idx],
     chip);
  addr = snd_saa7134_capture_controls[idx].private_value;
  chip->capture_ctl[addr] = kcontrol;
  err = snd_ctl_add(card, kcontrol);
  if (err < 0)
   return err;
 }

 chip->capture_source_addr = MIXER_ADDR_UNSELECTED;
 return 0;
}
