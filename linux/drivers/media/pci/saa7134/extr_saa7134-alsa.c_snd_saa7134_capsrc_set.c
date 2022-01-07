
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_7__ {int input; int rate; } ;
struct saa7134_dev {TYPE_2__ dmasound; TYPE_1__* pci; } ;
struct TYPE_9__ {int capture_source_addr; int* capture_source; TYPE_3__** capture_ctl; int card; int mixer_lock; struct saa7134_dev* dev; } ;
typedef TYPE_4__ snd_card_saa7134_t ;
struct TYPE_8__ {int id; } ;
struct TYPE_6__ {int device; } ;





 int MIXER_ADDR_UNSELECTED ;



 int SAA7133_ANALOG_IO_SELECT ;
 int SAA7133_DIGITAL_INPUT_XBAR1 ;
 int SAA7133_DIGITAL_OUTPUT_SEL1 ;
 int SAA7134_ANALOG_IO_SELECT ;
 int SAA7134_AUDIO_FORMAT_CTRL ;
 int SAA7134_SIF_SAMPLE_FREQ ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int saa_andorb (int ,int,int) ;
 int saa_dsp_writel (struct saa7134_dev*,int ,int) ;
 int saa_writel (int ,int) ;
 int snd_ctl_notify (int ,int ,int *) ;
 TYPE_4__* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_saa7134_capsrc_set(struct snd_kcontrol *kcontrol,
      int left, int right, bool force_notify)
{
 snd_card_saa7134_t *chip = snd_kcontrol_chip(kcontrol);
 int change = 0, addr = kcontrol->private_value;
 int active, old_addr;
 u32 anabar, xbarin;
 int analog_io, rate;
 struct saa7134_dev *dev;

 dev = chip->dev;

 spin_lock_irq(&chip->mixer_lock);

 active = left != 0 || right != 0;
 old_addr = chip->capture_source_addr;


 if (active) {
  change = old_addr != addr ||
    chip->capture_source[0] != left ||
    chip->capture_source[1] != right;

  chip->capture_source[0] = left;
  chip->capture_source[1] = right;
  chip->capture_source_addr = addr;
  dev->dmasound.input = addr;
 }
 spin_unlock_irq(&chip->mixer_lock);

 if (change) {
  switch (dev->pci->device) {

  case 129:
   switch (addr) {
   case 131:
    saa_andorb(SAA7134_AUDIO_FORMAT_CTRL,
        0xc0, 0xc0);
    saa_andorb(SAA7134_SIF_SAMPLE_FREQ,
        0x03, 0x00);
    break;
   case 133:
   case 132:
    analog_io = (133 == addr) ?
          0x00 : 0x08;
    rate = (32000 == dev->dmasound.rate) ?
     0x01 : 0x03;
    saa_andorb(SAA7134_ANALOG_IO_SELECT,
        0x08, analog_io);
    saa_andorb(SAA7134_AUDIO_FORMAT_CTRL,
        0xc0, 0x80);
    saa_andorb(SAA7134_SIF_SAMPLE_FREQ,
        0x03, rate);
    break;
   }

   break;
  case 130:
  case 128:
   xbarin = 0x03;
   anabar = 0;
   switch (addr) {
   case 131:
    xbarin = 0;
    anabar = 2;
    break;
   case 133:
    anabar = 0;
    break;
   case 132:
    anabar = 9;
    break;
   }


   saa_dsp_writel(dev, SAA7133_DIGITAL_OUTPUT_SEL1,
           0xbbbb10);

   if (left || right) {

    saa_dsp_writel(dev, SAA7133_DIGITAL_INPUT_XBAR1,
            xbarin);
    saa_writel(SAA7133_ANALOG_IO_SELECT, anabar);
   } else {
    saa_dsp_writel(dev, SAA7133_DIGITAL_INPUT_XBAR1,
            0);
    saa_writel(SAA7133_ANALOG_IO_SELECT, 0);
   }
   break;
  }
 }

 if (change) {
  if (force_notify)
   snd_ctl_notify(chip->card,
           SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->capture_ctl[addr]->id);

  if (old_addr != MIXER_ADDR_UNSELECTED && old_addr != addr)
   snd_ctl_notify(chip->card,
           SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->capture_ctl[old_addr]->id);
 }

 return change;
}
