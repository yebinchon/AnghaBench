
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum romcode_read { ____Placeholder_romcode_read } romcode_read ;


 scalar_t__ PRCM_ROMCODE_P2A ;
 int readb (scalar_t__) ;
 scalar_t__ tcdm_base ;

enum romcode_read prcmu_get_rc_p2a(void)
{
 return readb(tcdm_base + PRCM_ROMCODE_P2A);
}
