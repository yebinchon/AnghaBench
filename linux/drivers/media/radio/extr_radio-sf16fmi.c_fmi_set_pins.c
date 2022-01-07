
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fmi {int lock; int io; int mute; } ;


 int FMI_BIT_TUN_CE ;
 int FMI_BIT_TUN_CLK ;
 int FMI_BIT_TUN_DATA ;
 int FMI_BIT_TUN_STRQ ;
 int FMI_BIT_VOL_SW ;
 int LM7000_CE ;
 int LM7000_CLK ;
 int LM7000_DATA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int,int ) ;

__attribute__((used)) static void fmi_set_pins(void *handle, u8 pins)
{
 struct fmi *fmi = handle;
 u8 bits = FMI_BIT_TUN_STRQ;

 if (!fmi->mute)
  bits |= FMI_BIT_VOL_SW;

 if (pins & LM7000_DATA)
  bits |= FMI_BIT_TUN_DATA;
 if (pins & LM7000_CLK)
  bits |= FMI_BIT_TUN_CLK;
 if (pins & LM7000_CE)
  bits |= FMI_BIT_TUN_CE;

 mutex_lock(&fmi->lock);
 outb_p(bits, fmi->io);
 mutex_unlock(&fmi->lock);
}
