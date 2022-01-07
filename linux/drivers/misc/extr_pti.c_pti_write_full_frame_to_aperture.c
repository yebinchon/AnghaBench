
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pti_masterchannel {int dummy; } ;


 int pti_control_frame_built_and_sent (struct pti_masterchannel*,int *) ;
 int pti_write_to_aperture (struct pti_masterchannel*,int *,int) ;

__attribute__((used)) static void pti_write_full_frame_to_aperture(struct pti_masterchannel *mc,
      const unsigned char *buf,
      int len)
{
 pti_control_frame_built_and_sent(mc, ((void*)0));
 pti_write_to_aperture(mc, (u8 *)buf, len);
}
