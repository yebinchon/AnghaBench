
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {TYPE_1__* pdev; struct e1000_hw hw; } ;
struct ethtool_regs {unsigned int version; } ;
struct TYPE_2__ {int revision; unsigned int device; } ;


 int CTRL ;
 int IGBVF_REGS_LEN ;
 int RDH (int ) ;
 int RDLEN (int ) ;
 int RDT (int ) ;
 int STATUS ;
 int TDH (int ) ;
 int TDLEN (int ) ;
 int TDT (int ) ;
 int er32 (int ) ;
 int memset (void*,int ,int) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void igbvf_get_regs(struct net_device *netdev,
      struct ethtool_regs *regs, void *p)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 *regs_buff = p;

 memset(p, 0, IGBVF_REGS_LEN * sizeof(u32));

 regs->version = (1u << 24) |
   (adapter->pdev->revision << 16) |
   adapter->pdev->device;

 regs_buff[0] = er32(CTRL);
 regs_buff[1] = er32(STATUS);

 regs_buff[2] = er32(RDLEN(0));
 regs_buff[3] = er32(RDH(0));
 regs_buff[4] = er32(RDT(0));

 regs_buff[5] = er32(TDLEN(0));
 regs_buff[6] = er32(TDH(0));
 regs_buff[7] = er32(TDT(0));
}
