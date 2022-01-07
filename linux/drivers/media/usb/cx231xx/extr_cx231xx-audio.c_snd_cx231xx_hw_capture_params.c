
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cx231xx {int dev; } ;


 int dev_dbg (int ,char*) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 unsigned int params_format (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_alloc_vmalloc_buffer (struct snd_pcm_substream*,int ) ;
 struct cx231xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cx231xx_hw_capture_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct cx231xx *dev = snd_pcm_substream_chip(substream);
 int ret;

 dev_dbg(dev->dev, "Setting capture parameters\n");

 ret = snd_pcm_alloc_vmalloc_buffer(substream,
        params_buffer_bytes(hw_params));
 return ret;
}
