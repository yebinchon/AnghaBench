
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int enabled; } ;


 int KS_RXCR1 ;
 int KS_TXCR ;
 int RXCR1_RXE ;
 int TXCR_TXE ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int ) ;

__attribute__((used)) static void ks_disable_qmu(struct ks_net *ks)
{
 u16 w;

 w = ks_rdreg16(ks, KS_TXCR);


 w &= ~TXCR_TXE;
 ks_wrreg16(ks, KS_TXCR, w);


 w = ks_rdreg16(ks, KS_RXCR1);
 w &= ~RXCR1_RXE ;
 ks_wrreg16(ks, KS_RXCR1, w);

 ks->enabled = 0;

}
