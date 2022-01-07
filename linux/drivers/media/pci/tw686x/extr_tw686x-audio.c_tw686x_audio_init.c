
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {struct snd_card* snd_card; struct tw686x_audio_channel* audio_channels; struct pci_dev* pci_dev; } ;
struct tw686x_audio_channel {int ch; struct tw686x_dev* dev; int lock; } ;
struct snd_card {int longname; int shortname; int driver; } ;
struct pci_dev {int dev; } ;


 int AUDIO_CONTROL1 ;
 int BIT (int ) ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int THIS_MODULE ;
 int max_channels (struct tw686x_dev*) ;
 char* pci_name (struct pci_dev*) ;
 int reg_write (struct tw686x_dev*,int ,int ) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (int *,int ,int ,int ,int ,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int snd_card_set_dev (struct snd_card*,int *) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,char*,int) ;
 int tw686x_audio_dma_alloc (struct tw686x_dev*,struct tw686x_audio_channel*) ;
 int tw686x_audio_dma_free (struct tw686x_dev*,struct tw686x_audio_channel*) ;
 int tw686x_snd_pcm_init (struct tw686x_dev*) ;

int tw686x_audio_init(struct tw686x_dev *dev)
{
 struct pci_dev *pci_dev = dev->pci_dev;
 struct snd_card *card;
 int err, ch;


 reg_write(dev, AUDIO_CONTROL1, BIT(0));

 err = snd_card_new(&pci_dev->dev, SNDRV_DEFAULT_IDX1,
      SNDRV_DEFAULT_STR1,
      THIS_MODULE, 0, &card);
 if (err < 0)
  return err;

 dev->snd_card = card;
 strscpy(card->driver, "tw686x", sizeof(card->driver));
 strscpy(card->shortname, "tw686x", sizeof(card->shortname));
 strscpy(card->longname, pci_name(pci_dev), sizeof(card->longname));
 snd_card_set_dev(card, &pci_dev->dev);

 for (ch = 0; ch < max_channels(dev); ch++) {
  struct tw686x_audio_channel *ac;

  ac = &dev->audio_channels[ch];
  spin_lock_init(&ac->lock);
  ac->dev = dev;
  ac->ch = ch;

  err = tw686x_audio_dma_alloc(dev, ac);
  if (err < 0)
   goto err_cleanup;
 }

 err = tw686x_snd_pcm_init(dev);
 if (err < 0)
  goto err_cleanup;

 err = snd_card_register(card);
 if (!err)
  return 0;

err_cleanup:
 for (ch = 0; ch < max_channels(dev); ch++) {
  if (!dev->audio_channels[ch].dev)
   continue;
  tw686x_audio_dma_free(dev, &dev->audio_channels[ch]);
 }
 snd_card_free(card);
 dev->snd_card = ((void*)0);
 return err;
}
