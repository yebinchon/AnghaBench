
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct skge_port {int port; int netdev; struct skge_hw* hw; } ;
struct skge_hw {TYPE_1__** dev; } ;
struct TYPE_2__ {int name; } ;


 int KERN_DEBUG ;
 int PHY_BCOM_CTRL ;
 int PHY_BCOM_INT_STAT ;
 int PHY_B_IS_AN_PR ;
 int PHY_B_IS_LST_CHANGE ;
 int PHY_B_IS_NO_HDCL ;
 int PHY_B_IS_PSE ;
 int PHY_CT_LOOP ;
 int bcom_check_link (struct skge_hw*,int) ;
 int intr ;
 int netif_printk (struct skge_port*,int ,int ,int ,char*,int) ;
 int pr_err (char*,int ) ;
 int xm_phy_read (struct skge_hw*,int,int ) ;
 int xm_phy_write (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static inline void bcom_phy_intr(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 u16 isrc;

 isrc = xm_phy_read(hw, port, PHY_BCOM_INT_STAT);
 netif_printk(skge, intr, KERN_DEBUG, skge->netdev,
       "phy interrupt status 0x%x\n", isrc);

 if (isrc & PHY_B_IS_PSE)
  pr_err("%s: uncorrectable pair swap error\n",
         hw->dev[port]->name);




 if (isrc & PHY_B_IS_NO_HDCL) {
  u16 ctrl = xm_phy_read(hw, port, PHY_BCOM_CTRL);
  xm_phy_write(hw, port, PHY_BCOM_CTRL,
      ctrl | PHY_CT_LOOP);
  xm_phy_write(hw, port, PHY_BCOM_CTRL,
      ctrl & ~PHY_CT_LOOP);
 }

 if (isrc & (PHY_B_IS_AN_PR | PHY_B_IS_LST_CHANGE))
  bcom_check_link(hw, port);

}
