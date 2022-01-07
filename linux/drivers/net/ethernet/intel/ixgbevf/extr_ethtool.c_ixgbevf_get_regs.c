
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_hw {int revision_id; unsigned int device_id; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;
struct ethtool_regs {unsigned int version; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFCTRL ;
 int IXGBE_VFFRTIMER ;
 int IXGBE_VFLINKS ;
 int IXGBE_VFPSRTYPE ;
 int IXGBE_VFRDBAH (int) ;
 int IXGBE_VFRDBAL (int) ;
 int IXGBE_VFRDH (int) ;
 int IXGBE_VFRDLEN (int) ;
 int IXGBE_VFRDT (int) ;
 int IXGBE_VFRXDCTL (int) ;
 int IXGBE_VFRXMEMWRAP ;
 int IXGBE_VFSRRCTL (int) ;
 int IXGBE_VFSTATUS ;
 int IXGBE_VFTDBAH (int) ;
 int IXGBE_VFTDBAL (int) ;
 int IXGBE_VFTDH (int) ;
 int IXGBE_VFTDLEN (int) ;
 int IXGBE_VFTDT (int) ;
 int IXGBE_VFTDWBAH (int) ;
 int IXGBE_VFTDWBAL (int) ;
 int IXGBE_VFTXDCTL (int) ;
 int IXGBE_VTEIAC ;
 int IXGBE_VTEIAM ;
 int IXGBE_VTEICS ;
 int IXGBE_VTEIMC ;
 int IXGBE_VTEIMS ;
 int IXGBE_VTEITR (int ) ;
 int IXGBE_VTIVAR (int ) ;
 int IXGBE_VTIVAR_MISC ;
 int ixgbevf_get_regs_len (struct net_device*) ;
 int memset (void*,int ,int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbevf_get_regs(struct net_device *netdev,
        struct ethtool_regs *regs,
        void *p)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 *regs_buff = p;
 u32 regs_len = ixgbevf_get_regs_len(netdev);
 u8 i;

 memset(p, 0, regs_len);


 regs->version = (1u << 24) | (hw->revision_id << 16) | hw->device_id;


 regs_buff[0] = IXGBE_READ_REG(hw, IXGBE_VFCTRL);
 regs_buff[1] = IXGBE_READ_REG(hw, IXGBE_VFSTATUS);
 regs_buff[2] = IXGBE_READ_REG(hw, IXGBE_VFLINKS);
 regs_buff[3] = IXGBE_READ_REG(hw, IXGBE_VFRXMEMWRAP);
 regs_buff[4] = IXGBE_READ_REG(hw, IXGBE_VFFRTIMER);





 regs_buff[5] = IXGBE_READ_REG(hw, IXGBE_VTEICS);
 regs_buff[6] = IXGBE_READ_REG(hw, IXGBE_VTEICS);
 regs_buff[7] = IXGBE_READ_REG(hw, IXGBE_VTEIMS);
 regs_buff[8] = IXGBE_READ_REG(hw, IXGBE_VTEIMC);
 regs_buff[9] = IXGBE_READ_REG(hw, IXGBE_VTEIAC);
 regs_buff[10] = IXGBE_READ_REG(hw, IXGBE_VTEIAM);
 regs_buff[11] = IXGBE_READ_REG(hw, IXGBE_VTEITR(0));
 regs_buff[12] = IXGBE_READ_REG(hw, IXGBE_VTIVAR(0));
 regs_buff[13] = IXGBE_READ_REG(hw, IXGBE_VTIVAR_MISC);


 for (i = 0; i < 2; i++)
  regs_buff[14 + i] = IXGBE_READ_REG(hw, IXGBE_VFRDBAL(i));
 for (i = 0; i < 2; i++)
  regs_buff[16 + i] = IXGBE_READ_REG(hw, IXGBE_VFRDBAH(i));
 for (i = 0; i < 2; i++)
  regs_buff[18 + i] = IXGBE_READ_REG(hw, IXGBE_VFRDLEN(i));
 for (i = 0; i < 2; i++)
  regs_buff[20 + i] = IXGBE_READ_REG(hw, IXGBE_VFRDH(i));
 for (i = 0; i < 2; i++)
  regs_buff[22 + i] = IXGBE_READ_REG(hw, IXGBE_VFRDT(i));
 for (i = 0; i < 2; i++)
  regs_buff[24 + i] = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(i));
 for (i = 0; i < 2; i++)
  regs_buff[26 + i] = IXGBE_READ_REG(hw, IXGBE_VFSRRCTL(i));


 regs_buff[28] = IXGBE_READ_REG(hw, IXGBE_VFPSRTYPE);


 for (i = 0; i < 2; i++)
  regs_buff[29 + i] = IXGBE_READ_REG(hw, IXGBE_VFTDBAL(i));
 for (i = 0; i < 2; i++)
  regs_buff[31 + i] = IXGBE_READ_REG(hw, IXGBE_VFTDBAH(i));
 for (i = 0; i < 2; i++)
  regs_buff[33 + i] = IXGBE_READ_REG(hw, IXGBE_VFTDLEN(i));
 for (i = 0; i < 2; i++)
  regs_buff[35 + i] = IXGBE_READ_REG(hw, IXGBE_VFTDH(i));
 for (i = 0; i < 2; i++)
  regs_buff[37 + i] = IXGBE_READ_REG(hw, IXGBE_VFTDT(i));
 for (i = 0; i < 2; i++)
  regs_buff[39 + i] = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(i));
 for (i = 0; i < 2; i++)
  regs_buff[41 + i] = IXGBE_READ_REG(hw, IXGBE_VFTDWBAL(i));
 for (i = 0; i < 2; i++)
  regs_buff[43 + i] = IXGBE_READ_REG(hw, IXGBE_VFTDWBAH(i));
}
