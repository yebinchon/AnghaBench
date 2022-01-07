
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int dummy; } ;
struct snd_tm6000_card {struct tm6000_core* core; } ;


 int TM6010_REQ07_RCC_ACTIVE_IF ;
 int dprintk (int,char*) ;
 int tm6000_set_reg_mask (struct tm6000_core*,int ,int,int) ;

__attribute__((used)) static int _tm6000_stop_audio_dma(struct snd_tm6000_card *chip)
{
 struct tm6000_core *core = chip->core;

 dprintk(1, "Stopping audio DMA\n");


 tm6000_set_reg_mask(core, TM6010_REQ07_RCC_ACTIVE_IF, 0x00, 0x40);

 return 0;
}
