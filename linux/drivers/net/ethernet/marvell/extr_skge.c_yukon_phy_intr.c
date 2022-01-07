
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct skge_port {int port; scalar_t__ duplex; scalar_t__ speed; scalar_t__ flow_status; TYPE_1__* netdev; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 scalar_t__ FLOW_STAT_LOC_SEND ;
 scalar_t__ FLOW_STAT_NONE ;
 scalar_t__ FLOW_STAT_REM_SEND ;
 scalar_t__ FLOW_STAT_SYMMETRIC ;
 int GMAC_CTRL ;
 int GMC_PAUSE_OFF ;
 int GMC_PAUSE_ON ;
 int KERN_DEBUG ;
 int PHY_B_1000S_MSF ;
 int PHY_MARV_1000T_STAT ;
 int PHY_MARV_AUNE_LP ;
 int PHY_MARV_INT_STAT ;
 int PHY_MARV_PHY_STAT ;
 int PHY_M_AN_RF ;
 int PHY_M_IS_AN_COMPL ;
 int PHY_M_IS_DUP_CHANGE ;
 int PHY_M_IS_LSP_CHANGE ;
 int PHY_M_IS_LST_CHANGE ;
 int PHY_M_PS_FULL_DUP ;
 int PHY_M_PS_LINK_UP ;


 int PHY_M_PS_SPDUP_RES ;

 int SK_REG (int,int ) ;
 scalar_t__ SPEED_1000 ;
 int gm_phy_read (struct skge_hw*,int,int ) ;
 int intr ;
 int netif_printk (struct skge_port*,int ,int ,TYPE_1__*,char*,int,int) ;
 int pr_err (char*,int ,char const*) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;
 int yukon_link_down (struct skge_port*) ;
 int yukon_link_up (struct skge_port*) ;
 void* yukon_speed (struct skge_hw*,int) ;

__attribute__((used)) static void yukon_phy_intr(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 const char *reason = ((void*)0);
 u16 istatus, phystat;

 istatus = gm_phy_read(hw, port, PHY_MARV_INT_STAT);
 phystat = gm_phy_read(hw, port, PHY_MARV_PHY_STAT);

 netif_printk(skge, intr, KERN_DEBUG, skge->netdev,
       "phy interrupt status 0x%x 0x%x\n", istatus, phystat);

 if (istatus & PHY_M_IS_AN_COMPL) {
  if (gm_phy_read(hw, port, PHY_MARV_AUNE_LP)
      & PHY_M_AN_RF) {
   reason = "remote fault";
   goto failed;
  }

  if (gm_phy_read(hw, port, PHY_MARV_1000T_STAT) & PHY_B_1000S_MSF) {
   reason = "master/slave fault";
   goto failed;
  }

  if (!(phystat & PHY_M_PS_SPDUP_RES)) {
   reason = "speed/duplex";
   goto failed;
  }

  skge->duplex = (phystat & PHY_M_PS_FULL_DUP)
   ? DUPLEX_FULL : DUPLEX_HALF;
  skge->speed = yukon_speed(hw, phystat);


  switch (phystat & 130) {
  case 130:
   skge->flow_status = FLOW_STAT_SYMMETRIC;
   break;
  case 129:
   skge->flow_status = FLOW_STAT_REM_SEND;
   break;
  case 128:
   skge->flow_status = FLOW_STAT_LOC_SEND;
   break;
  default:
   skge->flow_status = FLOW_STAT_NONE;
  }

  if (skge->flow_status == FLOW_STAT_NONE ||
      (skge->speed < SPEED_1000 && skge->duplex == DUPLEX_HALF))
   skge_write8(hw, SK_REG(port, GMAC_CTRL), GMC_PAUSE_OFF);
  else
   skge_write8(hw, SK_REG(port, GMAC_CTRL), GMC_PAUSE_ON);
  yukon_link_up(skge);
  return;
 }

 if (istatus & PHY_M_IS_LSP_CHANGE)
  skge->speed = yukon_speed(hw, phystat);

 if (istatus & PHY_M_IS_DUP_CHANGE)
  skge->duplex = (phystat & PHY_M_PS_FULL_DUP) ? DUPLEX_FULL : DUPLEX_HALF;
 if (istatus & PHY_M_IS_LST_CHANGE) {
  if (phystat & PHY_M_PS_LINK_UP)
   yukon_link_up(skge);
  else
   yukon_link_down(skge);
 }
 return;
 failed:
 pr_err("%s: autonegotiation failed (%s)\n", skge->netdev->name, reason);


}
