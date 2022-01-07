
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int dev_warn (int ,char*,int) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct usbtv* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_usbtv_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *hw_params)
{
 int rv;
 struct usbtv *chip = snd_pcm_substream_chip(substream);

 rv = snd_pcm_lib_malloc_pages(substream,
  params_buffer_bytes(hw_params));

 if (rv < 0) {
  dev_warn(chip->dev, "pcm audio buffer allocation failure %i\n",
   rv);
  return rv;
 }

 return 0;
}
