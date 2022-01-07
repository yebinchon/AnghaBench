
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;
struct cx88_audio_dev {int substream; int count; struct cx88_core* core; } ;


 int ARRAY_SIZE (int ) ;
 int AUD_INT_DN_RISCI1 ;
 int AUD_INT_DN_SYNC ;
 int AUD_INT_OPC_ERR ;
 int GP_COUNT_CONTROL_RESET ;
 int MO_AUDD_GPCNT ;
 int MO_AUDD_GPCNTRL ;
 int MO_AUD_DMACNTRL ;
 int MO_AUD_INTMSK ;
 int MO_AUD_INTSTAT ;
 size_t SRAM_CH25 ;
 int atomic_set (int *,int) ;
 int cx88_aud_irqs ;
 int cx88_print_irqbits (char*,int ,int ,int,int) ;
 int cx88_sram_channel_dump (struct cx88_core*,int *) ;
 int * cx88_sram_channels ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int debug ;
 int dprintk (int,char*) ;
 int pr_warn (char*) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void cx8801_aud_irq(struct cx88_audio_dev *chip)
{
 struct cx88_core *core = chip->core;
 u32 status, mask;

 status = cx_read(MO_AUD_INTSTAT);
 mask = cx_read(MO_AUD_INTMSK);
 if (0 == (status & mask))
  return;
 cx_write(MO_AUD_INTSTAT, status);
 if (debug > 1 || (status & mask & ~0xff))
  cx88_print_irqbits("irq aud",
       cx88_aud_irqs, ARRAY_SIZE(cx88_aud_irqs),
       status, mask);

 if (status & AUD_INT_OPC_ERR) {
  pr_warn("Audio risc op code error\n");
  cx_clear(MO_AUD_DMACNTRL, 0x11);
  cx88_sram_channel_dump(core, &cx88_sram_channels[SRAM_CH25]);
 }
 if (status & AUD_INT_DN_SYNC) {
  dprintk(1, "Downstream sync error\n");
  cx_write(MO_AUDD_GPCNTRL, GP_COUNT_CONTROL_RESET);
  return;
 }

 if (status & AUD_INT_DN_RISCI1) {
  atomic_set(&chip->count, cx_read(MO_AUDD_GPCNT));
  snd_pcm_period_elapsed(chip->substream);
 }

}
