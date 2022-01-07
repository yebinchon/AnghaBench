
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int QCAFRM_FOOTER_LEN ;

u16
qcafrm_create_footer(u8 *buf)
{
 if (!buf)
  return 0;

 buf[0] = 0x55;
 buf[1] = 0x55;
 return QCAFRM_FOOTER_LEN;
}
