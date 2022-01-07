
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct skge_hw {TYPE_1__** dev; int phy_addr; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int GM_SMI_CTRL ;
 int GM_SMI_CT_BUSY ;
 int GM_SMI_CT_PHY_AD (int ) ;
 int GM_SMI_CT_REG_AD (int) ;
 int GM_SMI_DATA ;
 int PHY_RETRIES ;
 int gma_read16 (struct skge_hw*,int,int ) ;
 int gma_write16 (struct skge_hw*,int,int ,int) ;
 int pr_warn (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int gm_phy_write(struct skge_hw *hw, int port, u16 reg, u16 val)
{
 int i;

 gma_write16(hw, port, GM_SMI_DATA, val);
 gma_write16(hw, port, GM_SMI_CTRL,
    GM_SMI_CT_PHY_AD(hw->phy_addr) | GM_SMI_CT_REG_AD(reg));
 for (i = 0; i < PHY_RETRIES; i++) {
  udelay(1);

  if (!(gma_read16(hw, port, GM_SMI_CTRL) & GM_SMI_CT_BUSY))
   return 0;
 }

 pr_warn("%s: phy write timeout\n", hw->dev[port]->name);
 return -EIO;
}
