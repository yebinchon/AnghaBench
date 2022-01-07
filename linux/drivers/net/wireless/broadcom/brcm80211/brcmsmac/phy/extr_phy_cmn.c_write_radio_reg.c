
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {scalar_t__ phy_type; } ;
struct brcms_phy {scalar_t__ phy_wreg; scalar_t__ phy_wreg_limit; TYPE_4__* d11core; TYPE_2__ pubpi; TYPE_1__* sh; } ;
struct TYPE_10__ {TYPE_3__* bus; } ;
struct TYPE_9__ {scalar_t__ hosttype; } ;
struct TYPE_7__ {int corerev; } ;


 scalar_t__ BCMA_HOSTTYPE_PCI ;
 int D11REGOFFS (int ) ;
 scalar_t__ D11REV_GE (int ,int) ;
 scalar_t__ D11REV_IS (int ,int) ;
 scalar_t__ PHY_TYPE_SSN ;
 int bcma_read32 (TYPE_4__*,int ) ;
 int bcma_wflush16 (TYPE_4__*,int ,int ) ;
 int bcma_write16 (TYPE_4__*,int ,int ) ;
 int maccontrol ;
 int phy4waddr ;
 int phy4wdatalo ;
 int radioregaddr ;
 int radioregdata ;

void write_radio_reg(struct brcms_phy *pi, u16 addr, u16 val)
{
 if ((D11REV_GE(pi->sh->corerev, 24)) ||
     (D11REV_IS(pi->sh->corerev, 22)
      && (pi->pubpi.phy_type != PHY_TYPE_SSN))) {

  bcma_wflush16(pi->d11core, D11REGOFFS(radioregaddr), addr);
  bcma_write16(pi->d11core, D11REGOFFS(radioregdata), val);
 } else {
  bcma_wflush16(pi->d11core, D11REGOFFS(phy4waddr), addr);
  bcma_write16(pi->d11core, D11REGOFFS(phy4wdatalo), val);
 }

 if ((pi->d11core->bus->hosttype == BCMA_HOSTTYPE_PCI) &&
     (++pi->phy_wreg >= pi->phy_wreg_limit)) {
  (void)bcma_read32(pi->d11core, D11REGOFFS(maccontrol));
  pi->phy_wreg = 0;
 }
}
