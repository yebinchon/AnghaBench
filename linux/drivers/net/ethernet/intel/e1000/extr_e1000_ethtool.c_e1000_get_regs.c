
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct e1000_hw {int revision_id; int device_id; scalar_t__ phy_type; scalar_t__ mac_type; scalar_t__ media_type; } ;
struct TYPE_2__ {scalar_t__ receive_errors; scalar_t__ idle_errors; } ;
struct e1000_adapter {TYPE_1__ phy_stats; struct e1000_hw hw; } ;


 int CTRL ;
 int E1000_REGS_LEN ;
 int IGP01E1000_PHY_AGC_A ;
 int IGP01E1000_PHY_AGC_B ;
 int IGP01E1000_PHY_AGC_C ;
 int IGP01E1000_PHY_AGC_D ;
 int IGP01E1000_PHY_PAGE_SELECT ;
 int IGP01E1000_PHY_PCS_INIT_REG ;
 int IGP01E1000_PHY_PORT_STATUS ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_STATUS ;
 int MANC ;
 int PHY_1000T_STATUS ;
 int RCTL ;
 int RDH ;
 int RDLEN ;
 int RDT ;
 int RDTR ;
 int STATUS ;
 int TCTL ;
 int TDH ;
 int TDLEN ;
 int TDT ;
 int TIDV ;
 scalar_t__ e1000_82540 ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_phy_igp ;
 int e1000_read_phy_reg (struct e1000_hw*,int,scalar_t__*) ;
 int e1000_write_phy_reg (struct e1000_hw*,int,int) ;
 scalar_t__ er32 (int ) ;
 int memset (void*,int ,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
      void *p)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 *regs_buff = p;
 u16 phy_data;

 memset(p, 0, E1000_REGS_LEN * sizeof(u32));

 regs->version = (1 << 24) | (hw->revision_id << 16) | hw->device_id;

 regs_buff[0] = er32(CTRL);
 regs_buff[1] = er32(STATUS);

 regs_buff[2] = er32(RCTL);
 regs_buff[3] = er32(RDLEN);
 regs_buff[4] = er32(RDH);
 regs_buff[5] = er32(RDT);
 regs_buff[6] = er32(RDTR);

 regs_buff[7] = er32(TCTL);
 regs_buff[8] = er32(TDLEN);
 regs_buff[9] = er32(TDH);
 regs_buff[10] = er32(TDT);
 regs_buff[11] = er32(TIDV);

 regs_buff[12] = hw->phy_type;
 if (hw->phy_type == e1000_phy_igp) {
  e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT,
        IGP01E1000_PHY_AGC_A);
  e1000_read_phy_reg(hw, IGP01E1000_PHY_AGC_A &
       IGP01E1000_PHY_PAGE_SELECT, &phy_data);
  regs_buff[13] = (u32)phy_data;
  e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT,
        IGP01E1000_PHY_AGC_B);
  e1000_read_phy_reg(hw, IGP01E1000_PHY_AGC_B &
       IGP01E1000_PHY_PAGE_SELECT, &phy_data);
  regs_buff[14] = (u32)phy_data;
  e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT,
        IGP01E1000_PHY_AGC_C);
  e1000_read_phy_reg(hw, IGP01E1000_PHY_AGC_C &
       IGP01E1000_PHY_PAGE_SELECT, &phy_data);
  regs_buff[15] = (u32)phy_data;
  e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT,
        IGP01E1000_PHY_AGC_D);
  e1000_read_phy_reg(hw, IGP01E1000_PHY_AGC_D &
       IGP01E1000_PHY_PAGE_SELECT, &phy_data);
  regs_buff[16] = (u32)phy_data;
  regs_buff[17] = 0;
  e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT, 0x0);
  e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_STATUS &
       IGP01E1000_PHY_PAGE_SELECT, &phy_data);
  regs_buff[18] = (u32)phy_data;
  e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT,
        IGP01E1000_PHY_PCS_INIT_REG);
  e1000_read_phy_reg(hw, IGP01E1000_PHY_PCS_INIT_REG &
       IGP01E1000_PHY_PAGE_SELECT, &phy_data);
  regs_buff[19] = (u32)phy_data;
  regs_buff[20] = 0;
  regs_buff[22] = 0;
  regs_buff[23] = regs_buff[18];
  e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT, 0x0);
 } else {
  e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_STATUS, &phy_data);
  regs_buff[13] = (u32)phy_data;
  regs_buff[14] = 0;
  regs_buff[15] = 0;
  regs_buff[16] = 0;
  e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
  regs_buff[17] = (u32)phy_data;
  regs_buff[18] = regs_buff[13];
  regs_buff[19] = 0;
  regs_buff[20] = regs_buff[17];

  regs_buff[22] = adapter->phy_stats.receive_errors;
  regs_buff[23] = regs_buff[13];
 }
 regs_buff[21] = adapter->phy_stats.idle_errors;
 e1000_read_phy_reg(hw, PHY_1000T_STATUS, &phy_data);
 regs_buff[24] = (u32)phy_data;
 regs_buff[25] = regs_buff[24];
 if (hw->mac_type >= e1000_82540 &&
     hw->media_type == e1000_media_type_copper) {
  regs_buff[26] = er32(MANC);
 }
}
