
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_hardware {int d11core; TYPE_1__* band; } ;
struct TYPE_2__ {int CWmin; } ;


 int D11REGOFFS (int ) ;
 int OBJADDR_SCR_SEL ;
 int S_DOT11_CWMIN ;
 int bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int) ;
 int objaddr ;
 int objdata ;

__attribute__((used)) static void brcms_b_set_cwmin(struct brcms_hardware *wlc_hw, u16 newmin)
{
 wlc_hw->band->CWmin = newmin;

 bcma_write32(wlc_hw->d11core, D11REGOFFS(objaddr),
       OBJADDR_SCR_SEL | S_DOT11_CWMIN);
 (void)bcma_read32(wlc_hw->d11core, D11REGOFFS(objaddr));
 bcma_write32(wlc_hw->d11core, D11REGOFFS(objdata), newmin);
}
