
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pti_masterchannel {int dummy; } ;


 int pti_write_to_aperture (struct pti_masterchannel*,int *,int) ;

void pti_writedata(struct pti_masterchannel *mc, u8 *buf, int count)
{





 if ((mc != ((void*)0)) && (buf != ((void*)0)) && (count > 0))
  pti_write_to_aperture(mc, buf, count);
 return;
}
