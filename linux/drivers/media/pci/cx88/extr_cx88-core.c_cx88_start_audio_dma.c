
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_core {int dummy; } ;
struct TYPE_3__ {int fifo_size; } ;


 int AUD_RDS_LINES ;
 int MO_AUDD_LNGTH ;
 int MO_AUDR_LNGTH ;
 int MO_AUD_DMACNTRL ;
 size_t SRAM_CH25 ;
 size_t SRAM_CH26 ;
 size_t SRAM_CH27 ;
 int cx88_sram_channel_setup (struct cx88_core*,TYPE_1__*,int,int ) ;
 TYPE_1__* cx88_sram_channels ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;

int cx88_start_audio_dma(struct cx88_core *core)
{

 int bpl = cx88_sram_channels[SRAM_CH25].fifo_size / 4;

 int rds_bpl = cx88_sram_channels[SRAM_CH27].fifo_size / AUD_RDS_LINES;


 if (cx_read(MO_AUD_DMACNTRL) & 0x10)
  return 0;


 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH25], bpl, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH26], bpl, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH27],
    rds_bpl, 0);

 cx_write(MO_AUDD_LNGTH, bpl);
 cx_write(MO_AUDR_LNGTH, rds_bpl);


 cx_write(MO_AUD_DMACNTRL, 0x0007);

 return 0;
}
