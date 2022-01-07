
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_dmaqueue {scalar_t__ count; } ;
struct cx88_core {int pci_irqmask; int field; int height; int width; } ;
struct TYPE_3__ {int dma; } ;
struct cx88_buffer {TYPE_1__ risc; int bpl; } ;
struct cx8800_dev {TYPE_2__* fmt; struct cx88_core* core; } ;
struct TYPE_4__ {int cxformat; } ;


 int ColorFormatGamma ;
 int GP_COUNT_CONTROL_RESET ;
 int MO_COLOR_CTRL ;
 int MO_DEV_CNTRL2 ;
 int MO_PCI_INTMSK ;
 int MO_VIDY_GPCNTRL ;
 int MO_VID_DMACNTRL ;
 int MO_VID_INTMSK ;
 int PCI_INT_VIDINT ;
 size_t SRAM_CH21 ;
 int VID_CAPTURE_CONTROL ;
 int cx88_set_scale (struct cx88_core*,int ,int ,int ) ;
 int cx88_sram_channel_setup (struct cx88_core*,int *,int ,int ) ;
 int * cx88_sram_channels ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;

__attribute__((used)) static int start_video_dma(struct cx8800_dev *dev,
      struct cx88_dmaqueue *q,
      struct cx88_buffer *buf)
{
 struct cx88_core *core = dev->core;


 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH21],
    buf->bpl, buf->risc.dma);
 cx88_set_scale(core, core->width, core->height, core->field);
 cx_write(MO_COLOR_CTRL, dev->fmt->cxformat | ColorFormatGamma);


 cx_write(MO_VIDY_GPCNTRL, GP_COUNT_CONTROL_RESET);
 q->count = 0;


 cx_set(MO_PCI_INTMSK, core->pci_irqmask | PCI_INT_VIDINT);
 cx_set(MO_VID_INTMSK, 0x0f0011);


 cx_set(VID_CAPTURE_CONTROL, 0x06);


 cx_set(MO_DEV_CNTRL2, (1 << 5));
 cx_set(MO_VID_DMACNTRL, 0x11);

 return 0;
}
