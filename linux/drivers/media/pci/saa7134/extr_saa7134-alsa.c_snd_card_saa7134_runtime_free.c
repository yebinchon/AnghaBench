
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int * private_data; } ;
typedef int snd_card_saa7134_pcm_t ;


 int kfree (int *) ;

__attribute__((used)) static void snd_card_saa7134_runtime_free(struct snd_pcm_runtime *runtime)
{
 snd_card_saa7134_pcm_t *pcm = runtime->private_data;

 kfree(pcm);
}
