
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;


 int MO_AGC_BACK_VBI ;
 int MO_AGC_SYNC_TIP1 ;
 int MO_COLOR_CTRL ;
 int MO_INPUT_FORMAT ;
 int MO_INT1_STAT ;
 int MO_PCI_INTSTAT ;
 int MO_PDMA_DTHRSH ;
 int MO_PDMA_STHRSH ;
 int MO_SRST_IO ;
 int MO_VID_INTSTAT ;
 size_t SRAM_CH21 ;
 size_t SRAM_CH22 ;
 size_t SRAM_CH23 ;
 size_t SRAM_CH24 ;
 size_t SRAM_CH25 ;
 size_t SRAM_CH26 ;
 size_t SRAM_CH27 ;
 size_t SRAM_CH28 ;
 int cx88_shutdown (struct cx88_core*) ;
 int cx88_sram_channel_setup (struct cx88_core*,int *,int,int ) ;
 int * cx88_sram_channels ;
 int cx_andor (int ,int,int) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

int cx88_reset(struct cx88_core *core)
{
 dprintk(1, "");
 cx88_shutdown(core);


 cx_write(MO_VID_INTSTAT, 0xFFFFFFFF);
 cx_write(MO_PCI_INTSTAT, 0xFFFFFFFF);
 cx_write(MO_INT1_STAT, 0xFFFFFFFF);


 msleep(100);


 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH21],
    720 * 4, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH22], 128, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH23], 128, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH24], 128, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH25], 128, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH26], 128, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH28],
    188 * 4, 0);
 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH27], 128, 0);


 cx_write(MO_INPUT_FORMAT, ((1 << 13) |
       (1 << 12) |
       (1 << 11) |
       (0 << 10) |
       (0 << 9) |
       (7)));


 cx_andor(MO_COLOR_CTRL, 0x4000, 0x4000);


 cx_write(MO_PDMA_STHRSH, 0x0807);
 cx_write(MO_PDMA_DTHRSH, 0x0807);


 cx_write(MO_AGC_SYNC_TIP1, 0x0380000F);
 cx_write(MO_AGC_BACK_VBI, 0x00E00555);

 cx_write(MO_VID_INTSTAT, 0xFFFFFFFF);
 cx_write(MO_PCI_INTSTAT, 0xFFFFFFFF);
 cx_write(MO_INT1_STAT, 0xFFFFFFFF);


 cx_write(MO_SRST_IO, 0);
 usleep_range(10000, 20000);
 cx_write(MO_SRST_IO, 1);

 return 0;
}
