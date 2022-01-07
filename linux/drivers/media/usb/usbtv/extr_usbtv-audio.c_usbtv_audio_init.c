
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbtv {struct snd_card* snd; TYPE_4__* dev; TYPE_3__* udev; int snd_stream; int snd_trigger; } ;
struct snd_pcm {struct usbtv* private_data; scalar_t__ info_flags; int name; } ;
struct snd_card {int longname; int shortname; int driver; } ;
struct TYPE_8__ {TYPE_1__* driver; } ;
struct TYPE_7__ {int devnum; TYPE_2__* bus; int dev; } ;
struct TYPE_6__ {int busnum; } ;
struct TYPE_5__ {char* name; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int THIS_MODULE ;
 int USBTV_AUDIO_BUFFER ;
 int atomic_set (int *,int ) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (int *,int ,char*,int ,int ,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int snd_card_set_dev (struct snd_card*,TYPE_4__*) ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int ) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_usbtv_pcm_ops ;
 int snd_usbtv_trigger ;
 int snprintf (int ,int,char*,int,int) ;
 int strscpy (int ,char*,int) ;

int usbtv_audio_init(struct usbtv *usbtv)
{
 int rv;
 struct snd_card *card;
 struct snd_pcm *pcm;

 INIT_WORK(&usbtv->snd_trigger, snd_usbtv_trigger);
 atomic_set(&usbtv->snd_stream, 0);

 rv = snd_card_new(&usbtv->udev->dev, SNDRV_DEFAULT_IDX1, "usbtv",
  THIS_MODULE, 0, &card);
 if (rv < 0)
  return rv;

 strscpy(card->driver, usbtv->dev->driver->name, sizeof(card->driver));
 strscpy(card->shortname, "usbtv", sizeof(card->shortname));
 snprintf(card->longname, sizeof(card->longname),
  "USBTV Audio at bus %d device %d", usbtv->udev->bus->busnum,
  usbtv->udev->devnum);

 snd_card_set_dev(card, usbtv->dev);

 usbtv->snd = card;

 rv = snd_pcm_new(card, "USBTV Audio", 0, 0, 1, &pcm);
 if (rv < 0)
  goto err;

 strscpy(pcm->name, "USBTV Audio Input", sizeof(pcm->name));
 pcm->info_flags = 0;
 pcm->private_data = usbtv;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_usbtv_pcm_ops);
 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
  snd_dma_continuous_data(GFP_KERNEL), USBTV_AUDIO_BUFFER,
  USBTV_AUDIO_BUFFER);

 rv = snd_card_register(card);
 if (rv)
  goto err;

 return 0;

err:
 usbtv->snd = ((void*)0);
 snd_card_free(card);

 return rv;
}
