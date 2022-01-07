
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__* txw; } ;
struct ks_net {int rc_rxqcr; TYPE_1__ txh; } ;


 int ALIGN (scalar_t__,int) ;
 int KS_RXQCR ;
 int KS_TXQCR ;
 int RXQCR_SDA ;
 int TXQCR_METFE ;
 scalar_t__ cpu_to_le16 (scalar_t__) ;
 int ks_outblk (struct ks_net*,scalar_t__*,int) ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;
 int ks_wrreg8 (struct ks_net*,int ,int) ;

__attribute__((used)) static void ks_write_qmu(struct ks_net *ks, u8 *pdata, u16 len)
{

 ks->txh.txw[0] = 0;
 ks->txh.txw[1] = cpu_to_le16(len);


 ks_wrreg8(ks, KS_RXQCR, (ks->rc_rxqcr | RXQCR_SDA) & 0xff);

 ks_outblk(ks, ks->txh.txw, 4);

 ks_outblk(ks, (u16 *)pdata, ALIGN(len, 4));

 ks_wrreg8(ks, KS_RXQCR, ks->rc_rxqcr);

 ks_wrreg16(ks, KS_TXQCR, TXQCR_METFE);

 while (ks_rdreg16(ks, KS_TXQCR) & TXQCR_METFE)
  ;
}
