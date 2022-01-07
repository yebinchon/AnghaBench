
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tm6000_card {struct snd_pcm_substream* substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;


 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int dprintk (int,char*) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_pow2 (struct snd_pcm_runtime*,int ,int ) ;
 struct snd_tm6000_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_tm6000_digital_hw ;

__attribute__((used)) static int snd_tm6000_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_tm6000_card *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 err = snd_pcm_hw_constraint_pow2(runtime, 0,
      SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0)
  goto _error;

 chip->substream = substream;

 runtime->hw = snd_tm6000_digital_hw;
 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);

 return 0;
_error:
 dprintk(1, "Error opening PCM!\n");
 return err;
}
