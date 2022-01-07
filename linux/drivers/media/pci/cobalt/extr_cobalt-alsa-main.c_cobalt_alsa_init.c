
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cobalt_card {int dummy; } ;
struct snd_card {int dummy; } ;
struct cobalt_stream {struct snd_cobalt_card* alsa; struct cobalt* cobalt; } ;
struct cobalt {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int THIS_MODULE ;
 int cobalt_err (char*,int) ;
 int kfree (struct snd_cobalt_card*) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (int *,int ,int ,int ,int ,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int snd_cobalt_card_create (struct cobalt_stream*,struct snd_card*,struct snd_cobalt_card**) ;
 int snd_cobalt_card_set_names (struct snd_cobalt_card*) ;
 int snd_cobalt_pcm_create (struct snd_cobalt_card*) ;

int cobalt_alsa_init(struct cobalt_stream *s)
{
 struct cobalt *cobalt = s->cobalt;
 struct snd_card *sc = ((void*)0);
 struct snd_cobalt_card *cobsc;
 int ret;







 ret = snd_card_new(&cobalt->pci_dev->dev, SNDRV_DEFAULT_IDX1,
      SNDRV_DEFAULT_STR1, THIS_MODULE, 0, &sc);
 if (ret) {
  cobalt_err("snd_card_new() failed with err %d\n", ret);
  goto err_exit;
 }


 ret = snd_cobalt_card_create(s, sc, &cobsc);
 if (ret) {
  cobalt_err("snd_cobalt_card_create() failed with err %d\n",
      ret);
  goto err_exit_free;
 }


 snd_cobalt_card_set_names(cobsc);

 ret = snd_cobalt_pcm_create(cobsc);
 if (ret) {
  cobalt_err("snd_cobalt_pcm_create() failed with err %d\n",
      ret);
  goto err_exit_free;
 }




 s->alsa = cobsc;


 ret = snd_card_register(sc);
 if (ret) {
  s->alsa = ((void*)0);
  cobalt_err("snd_card_register() failed with err %d\n", ret);
  goto err_exit_free;
 }

 return 0;

err_exit_free:
 if (sc != ((void*)0))
  snd_card_free(sc);
 kfree(cobsc);
err_exit:
 return ret;
}
