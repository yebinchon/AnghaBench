
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_snd_pcm {int on; int lock; struct solo_dev* solo_dev; } ;
struct solo_dev {int snd_users; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;


 int SOLO_IRQ_G723 ;
 int atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 struct solo_snd_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int solo_irq_off (struct solo_dev*,int ) ;
 int solo_irq_on (struct solo_dev*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_solo_pcm_trigger(struct snd_pcm_substream *ss, int cmd)
{
 struct solo_snd_pcm *solo_pcm = snd_pcm_substream_chip(ss);
 struct solo_dev *solo_dev = solo_pcm->solo_dev;
 int ret = 0;

 spin_lock(&solo_pcm->lock);

 switch (cmd) {
 case 129:
  if (solo_pcm->on == 0) {

   if (atomic_inc_return(&solo_dev->snd_users) == 1)
    solo_irq_on(solo_dev, SOLO_IRQ_G723);
   solo_pcm->on = 1;
  }
  break;
 case 128:
  if (solo_pcm->on) {

   if (atomic_dec_return(&solo_dev->snd_users) == 0)
    solo_irq_off(solo_dev, SOLO_IRQ_G723);
   solo_pcm->on = 0;
  }
  break;
 default:
  ret = -EINVAL;
 }

 spin_unlock(&solo_pcm->lock);

 return ret;
}
