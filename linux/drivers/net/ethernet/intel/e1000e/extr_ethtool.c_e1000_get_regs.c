
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_8__ {int parent; } ;
struct net_device {TYPE_4__ dev; } ;
struct ethtool_regs {unsigned int version; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ phy; } ;
struct TYPE_7__ {scalar_t__ receive_errors; } ;
struct e1000_adapter {TYPE_3__ phy_stats; struct e1000_hw hw; TYPE_1__* pdev; } ;
struct TYPE_5__ {int revision; unsigned int device; } ;


 int CTRL ;
 int E1000_REGS_LEN ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_STATUS ;
 int MII_STAT1000 ;
 int RCTL ;
 int RDH (int ) ;
 int RDLEN (int ) ;
 int RDT (int ) ;
 int RDTR ;
 int STATUS ;
 int TCTL ;
 int TDH (int ) ;
 int TDLEN (int ) ;
 int TDT (int ) ;
 int TIDV ;
 scalar_t__ e1000_phy_m88 ;
 int e1e_rphy (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ er32 (int ) ;
 int memset (void*,int ,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void e1000_get_regs(struct net_device *netdev,
      struct ethtool_regs *regs, void *p)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 *regs_buff = p;
 u16 phy_data;

 pm_runtime_get_sync(netdev->dev.parent);

 memset(p, 0, E1000_REGS_LEN * sizeof(u32));

 regs->version = (1u << 24) |
   (adapter->pdev->revision << 16) |
   adapter->pdev->device;

 regs_buff[0] = er32(CTRL);
 regs_buff[1] = er32(STATUS);

 regs_buff[2] = er32(RCTL);
 regs_buff[3] = er32(RDLEN(0));
 regs_buff[4] = er32(RDH(0));
 regs_buff[5] = er32(RDT(0));
 regs_buff[6] = er32(RDTR);

 regs_buff[7] = er32(TCTL);
 regs_buff[8] = er32(TDLEN(0));
 regs_buff[9] = er32(TDH(0));
 regs_buff[10] = er32(TDT(0));
 regs_buff[11] = er32(TIDV);

 regs_buff[12] = adapter->hw.phy.type;




 if (hw->phy.type == e1000_phy_m88) {
  e1e_rphy(hw, M88E1000_PHY_SPEC_STATUS, &phy_data);
  regs_buff[13] = (u32)phy_data;
  regs_buff[14] = 0;
  regs_buff[15] = 0;
  regs_buff[16] = 0;
  e1e_rphy(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
  regs_buff[17] = (u32)phy_data;
  regs_buff[18] = regs_buff[13];
  regs_buff[19] = 0;
  regs_buff[20] = regs_buff[17];

  regs_buff[22] = adapter->phy_stats.receive_errors;
  regs_buff[23] = regs_buff[13];
 }
 regs_buff[21] = 0;
 e1e_rphy(hw, MII_STAT1000, &phy_data);
 regs_buff[24] = (u32)phy_data;
 regs_buff[25] = regs_buff[24];

 pm_runtime_put_sync(netdev->dev.parent);
}
