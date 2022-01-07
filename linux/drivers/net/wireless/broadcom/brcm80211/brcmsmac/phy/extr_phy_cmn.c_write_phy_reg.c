
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy {scalar_t__ phy_wreg; scalar_t__ phy_wreg_limit; TYPE_2__* d11core; } ;
struct TYPE_7__ {TYPE_1__* bus; } ;
struct TYPE_6__ {scalar_t__ hosttype; } ;


 scalar_t__ BCMA_HOSTTYPE_PCI ;
 int D11REGOFFS (int ) ;
 int bcma_read16 (TYPE_2__*,int ) ;
 int bcma_wflush16 (TYPE_2__*,int ,int) ;
 int bcma_write16 (TYPE_2__*,int ,int) ;
 int bcma_write32 (TYPE_2__*,int ,int) ;
 int phyregaddr ;
 int phyregdata ;
 int phyversion ;

void write_phy_reg(struct brcms_phy *pi, u16 addr, u16 val)
{






 bcma_write32(pi->d11core, D11REGOFFS(phyregaddr), addr | (val << 16));
 if ((pi->d11core->bus->hosttype == BCMA_HOSTTYPE_PCI) &&
     (++pi->phy_wreg >= pi->phy_wreg_limit)) {
  pi->phy_wreg = 0;
  (void)bcma_read16(pi->d11core, D11REGOFFS(phyversion));
 }

}
