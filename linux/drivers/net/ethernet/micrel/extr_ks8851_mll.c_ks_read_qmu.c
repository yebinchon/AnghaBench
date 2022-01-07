
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ks_net {int extra_byte; int rc_rxqcr; int hw_addr; } ;


 int ALIGN (int,int) ;
 int KS_RXFDPR ;
 int KS_RXQCR ;
 int RXFDPR_RXFPAI ;
 int RXQCR_SDA ;
 int ioread8 (int ) ;
 int ks_inblk (struct ks_net*,int *,int) ;
 int ks_wrreg16 (struct ks_net*,int ,int ) ;
 int ks_wrreg8 (struct ks_net*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void ks_read_qmu(struct ks_net *ks, u16 *buf, u32 len)
{
 u32 r = ks->extra_byte & 0x1 ;
 u32 w = ks->extra_byte - r;


 ks_wrreg16(ks, KS_RXFDPR, RXFDPR_RXFPAI);
 ks_wrreg8(ks, KS_RXQCR, (ks->rc_rxqcr | RXQCR_SDA) & 0xff);
 if (unlikely(r))
  ioread8(ks->hw_addr);
 ks_inblk(ks, buf, w + 2 + 2);


 ks_inblk(ks, buf, ALIGN(len, 4));


 ks_wrreg8(ks, KS_RXQCR, ks->rc_rxqcr);
}
