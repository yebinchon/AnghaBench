
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dev_addr; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_6__ {scalar_t__ width; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_1__ mac; TYPE_3__ bus; } ;
struct e1000_adapter {struct net_device* netdev; struct e1000_hw hw; } ;
typedef int pba_str ;


 int E1000_PBANUM_LENGTH ;
 scalar_t__ e1000_bus_width_pcie_x4 ;
 scalar_t__ e1000_phy_ife ;
 scalar_t__ e1000_read_pba_string_generic (struct e1000_hw*,int *,int) ;
 int e_info (char*,char*,...) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void e1000_print_device_info(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 u32 ret_val;
 u8 pba_str[E1000_PBANUM_LENGTH];


 e_info("(PCI Express:2.5GT/s:%s) %pM\n",

        ((hw->bus.width == e1000_bus_width_pcie_x4) ? "Width x4" :
  "Width x1"),

        netdev->dev_addr);
 e_info("Intel(R) PRO/%s Network Connection\n",
        (hw->phy.type == e1000_phy_ife) ? "10/100" : "1000");
 ret_val = e1000_read_pba_string_generic(hw, pba_str,
      E1000_PBANUM_LENGTH);
 if (ret_val)
  strlcpy((char *)pba_str, "Unknown", sizeof(pba_str));
 e_info("MAC: %d, PHY: %d, PBA No: %s\n",
        hw->mac.type, hw->phy.type, pba_str);
}
