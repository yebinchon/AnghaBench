
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int rc_ccr; int lock; } ;


 int CCR_EEPROM ;
 int EEPCR_EECS ;
 int EEPCR_EESA ;
 int ENOENT ;
 int KS_EEPCR ;
 int ks8851_wrreg16 (struct ks8851_net*,int ,int) ;
 int mutex_lock (int *) ;

__attribute__((used)) static int ks8851_eeprom_claim(struct ks8851_net *ks)
{
 if (!(ks->rc_ccr & CCR_EEPROM))
  return -ENOENT;

 mutex_lock(&ks->lock);


 ks8851_wrreg16(ks, KS_EEPCR, EEPCR_EESA | EEPCR_EECS);
 return 0;
}
