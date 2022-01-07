
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum romcode_write { ____Placeholder_romcode_write } romcode_write ;


 int EINVAL ;
 scalar_t__ PRCM_ROMCODE_A2P ;
 int RDY_2_DS ;
 int RDY_2_XP70_RST ;
 scalar_t__ tcdm_base ;
 int writeb (int,scalar_t__) ;

int prcmu_set_rc_a2p(enum romcode_write val)
{
 if (val < RDY_2_DS || val > RDY_2_XP70_RST)
  return -EINVAL;
 writeb(val, (tcdm_base + PRCM_ROMCODE_A2P));
 return 0;
}
