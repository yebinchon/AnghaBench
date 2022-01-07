
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int lock; } ;


 unsigned int EEPCR_EESA ;
 int KS_EEPCR ;
 unsigned int ks8851_rdreg16 (struct ks8851_net*,int ) ;
 int ks8851_wrreg16 (struct ks8851_net*,int ,unsigned int) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ks8851_eeprom_release(struct ks8851_net *ks)
{
 unsigned val = ks8851_rdreg16(ks, KS_EEPCR);

 ks8851_wrreg16(ks, KS_EEPCR, val & ~EEPCR_EESA);
 mutex_unlock(&ks->lock);
}
