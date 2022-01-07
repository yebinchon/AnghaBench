
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int netdev; } ;


 int KS_PMECR ;
 unsigned int PMECR_PM_MASK ;
 int hw ;
 unsigned int ks8851_rdreg16 (struct ks8851_net*,int ) ;
 int ks8851_wrreg16 (struct ks8851_net*,int ,unsigned int) ;
 int netif_dbg (struct ks8851_net*,int ,int ,char*,unsigned int) ;

__attribute__((used)) static void ks8851_set_powermode(struct ks8851_net *ks, unsigned pwrmode)
{
 unsigned pmecr;

 netif_dbg(ks, hw, ks->netdev, "setting power mode %d\n", pwrmode);

 pmecr = ks8851_rdreg16(ks, KS_PMECR);
 pmecr &= ~PMECR_PM_MASK;
 pmecr |= pwrmode;

 ks8851_wrreg16(ks, KS_PMECR, pmecr);
}
