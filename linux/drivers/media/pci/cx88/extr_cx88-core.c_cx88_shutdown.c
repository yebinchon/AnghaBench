
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;


 int MO_AUD_DMACNTRL ;
 int MO_AUD_INTMSK ;
 int MO_DEV_CNTRL2 ;
 int MO_GPHST_DMACNTRL ;
 int MO_GPHST_INTMSK ;
 int MO_PCI_INTMSK ;
 int MO_TS_DMACNTRL ;
 int MO_TS_INTMSK ;
 int MO_VID_DMACNTRL ;
 int MO_VID_INTMSK ;
 int MO_VIP_DMACNTRL ;
 int MO_VIP_INTMSK ;
 int VID_CAPTURE_CONTROL ;
 int cx_write (int ,int) ;

void cx88_shutdown(struct cx88_core *core)
{

 cx_write(MO_DEV_CNTRL2, 0);


 cx_write(MO_VID_DMACNTRL, 0x0);
 cx_write(MO_AUD_DMACNTRL, 0x0);
 cx_write(MO_TS_DMACNTRL, 0x0);
 cx_write(MO_VIP_DMACNTRL, 0x0);
 cx_write(MO_GPHST_DMACNTRL, 0x0);


 cx_write(MO_PCI_INTMSK, 0x0);
 cx_write(MO_VID_INTMSK, 0x0);
 cx_write(MO_AUD_INTMSK, 0x0);
 cx_write(MO_TS_INTMSK, 0x0);
 cx_write(MO_VIP_INTMSK, 0x0);
 cx_write(MO_GPHST_INTMSK, 0x0);


 cx_write(VID_CAPTURE_CONTROL, 0);
}
