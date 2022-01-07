
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_phy {scalar_t__ phy_wreg; int d11core; TYPE_1__* sh; } ;
struct TYPE_2__ {int corerev; } ;


 int D11REGOFFS (int ) ;
 scalar_t__ D11REV_GE (int ,int) ;
 int RADIO_IDCODE ;
 scalar_t__ bcma_read16 (int ,int ) ;
 int bcma_wflush16 (int ,int ,int) ;
 int phy4waddr ;
 int phy4wdatahi ;
 int phy4wdatalo ;
 int radioregaddr ;
 int radioregdata ;

__attribute__((used)) static u32 read_radio_id(struct brcms_phy *pi)
{
 u32 id;

 if (D11REV_GE(pi->sh->corerev, 24)) {
  u32 b0, b1, b2;

  bcma_wflush16(pi->d11core, D11REGOFFS(radioregaddr), 0);
  b0 = (u32) bcma_read16(pi->d11core, D11REGOFFS(radioregdata));
  bcma_wflush16(pi->d11core, D11REGOFFS(radioregaddr), 1);
  b1 = (u32) bcma_read16(pi->d11core, D11REGOFFS(radioregdata));
  bcma_wflush16(pi->d11core, D11REGOFFS(radioregaddr), 2);
  b2 = (u32) bcma_read16(pi->d11core, D11REGOFFS(radioregdata));

  id = ((b0 & 0xf) << 28) | (((b2 << 8) | b1) << 12) | ((b0 >> 4)
              & 0xf);
 } else {
  bcma_wflush16(pi->d11core, D11REGOFFS(phy4waddr), RADIO_IDCODE);
  id = (u32) bcma_read16(pi->d11core, D11REGOFFS(phy4wdatalo));
  id |= (u32) bcma_read16(pi->d11core,
     D11REGOFFS(phy4wdatahi)) << 16;
 }
 pi->phy_wreg = 0;
 return id;
}
