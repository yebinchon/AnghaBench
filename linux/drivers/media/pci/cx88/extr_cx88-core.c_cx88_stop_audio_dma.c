
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;


 int MO_AUD_DMACNTRL ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;

int cx88_stop_audio_dma(struct cx88_core *core)
{

 if (cx_read(MO_AUD_DMACNTRL) & 0x10)
  return 0;


 cx_write(MO_AUD_DMACNTRL, 0x0000);

 return 0;
}
