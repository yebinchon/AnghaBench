
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;
struct cx8800_dev {struct cx88_core* core; } ;


 int MO_PCI_INTMSK ;
 int MO_VID_DMACNTRL ;
 int MO_VID_INTMSK ;
 int PCI_INT_VIDINT ;
 int VID_CAPTURE_CONTROL ;
 int cx_clear (int ,int) ;

void cx8800_stop_vbi_dma(struct cx8800_dev *dev)
{
 struct cx88_core *core = dev->core;


 cx_clear(MO_VID_DMACNTRL, 0x88);


 cx_clear(VID_CAPTURE_CONTROL, 0x18);


 cx_clear(MO_PCI_INTMSK, PCI_INT_VIDINT);
 cx_clear(MO_VID_INTMSK, 0x0f0088);
}
