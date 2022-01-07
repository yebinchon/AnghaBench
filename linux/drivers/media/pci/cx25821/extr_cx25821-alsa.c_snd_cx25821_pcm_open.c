
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {unsigned int period_bytes_min; unsigned int period_bytes_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct cx25821_audio_dev {struct snd_pcm_substream* substream; } ;
struct TYPE_4__ {int fifo_size; } ;


 unsigned int AUDIO_LINE_SIZE ;
 size_t AUDIO_SRAM_CHANNEL ;
 int DEFAULT_FIFO_SIZE ;
 int ENODEV ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 TYPE_2__* cx25821_sram_channels ;
 int dprintk (int,char*) ;
 int pr_err (char*) ;
 TYPE_1__ snd_cx25821_digital_hw ;
 int snd_pcm_hw_constraint_pow2 (struct snd_pcm_runtime*,int ,int ) ;
 struct cx25821_audio_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cx25821_pcm_open(struct snd_pcm_substream *substream)
{
 struct cx25821_audio_dev *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;
 unsigned int bpl = 0;

 if (!chip) {
  pr_err("DEBUG: cx25821 can't find device struct. Can't proceed with open\n");
  return -ENODEV;
 }

 err = snd_pcm_hw_constraint_pow2(runtime, 0,
      SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0)
  goto _error;

 chip->substream = substream;

 runtime->hw = snd_cx25821_digital_hw;

 if (cx25821_sram_channels[AUDIO_SRAM_CHANNEL].fifo_size !=
     DEFAULT_FIFO_SIZE) {

  bpl = cx25821_sram_channels[AUDIO_SRAM_CHANNEL].fifo_size / 3;
  bpl &= ~7;

  if (bpl > AUDIO_LINE_SIZE)
   bpl = AUDIO_LINE_SIZE;

  runtime->hw.period_bytes_min = bpl;
  runtime->hw.period_bytes_max = bpl;
 }

 return 0;
_error:
 dprintk(1, "Error opening PCM!\n");
 return err;
}
