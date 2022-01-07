
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int dummy; } ;


 int KS_RXCR1 ;
 int RXCR1_RXE ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int ) ;

__attribute__((used)) static void ks_start_rx(struct ks_net *ks)
{
 u16 cntl;


 cntl = ks_rdreg16(ks, KS_RXCR1);
 cntl |= RXCR1_RXE ;
 ks_wrreg16(ks, KS_RXCR1, cntl);
}
