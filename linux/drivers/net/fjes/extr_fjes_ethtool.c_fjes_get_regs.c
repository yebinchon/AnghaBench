
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fjes_hw {int dummy; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
struct ethtool_regs {int version; } ;


 int FJES_REGS_LEN ;
 int XSCT_CR ;
 int XSCT_CS ;
 int XSCT_DCTL ;
 int XSCT_ICTL ;
 int XSCT_IG ;
 int XSCT_IMC ;
 int XSCT_IMS ;
 int XSCT_IS ;
 int XSCT_MAX_EP ;
 int XSCT_OWNER_EPID ;
 int XSCT_REQBAH ;
 int XSCT_REQBAL ;
 int XSCT_REQBL ;
 int XSCT_RESPBAH ;
 int XSCT_RESPBAL ;
 int XSCT_RESPBL ;
 int XSCT_SHSTSAH ;
 int XSCT_SHSTSAL ;
 int memset (void*,int ,int) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;
 int rd32 (int ) ;

__attribute__((used)) static void fjes_get_regs(struct net_device *netdev,
     struct ethtool_regs *regs, void *p)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 struct fjes_hw *hw = &adapter->hw;
 u32 *regs_buff = p;

 memset(p, 0, FJES_REGS_LEN * sizeof(u32));

 regs->version = 1;


 regs_buff[0] = rd32(XSCT_OWNER_EPID);
 regs_buff[1] = rd32(XSCT_MAX_EP);


 regs_buff[4] = rd32(XSCT_DCTL);


 regs_buff[8] = rd32(XSCT_CR);
 regs_buff[9] = rd32(XSCT_CS);
 regs_buff[10] = rd32(XSCT_SHSTSAL);
 regs_buff[11] = rd32(XSCT_SHSTSAH);

 regs_buff[13] = rd32(XSCT_REQBL);
 regs_buff[14] = rd32(XSCT_REQBAL);
 regs_buff[15] = rd32(XSCT_REQBAH);

 regs_buff[17] = rd32(XSCT_RESPBL);
 regs_buff[18] = rd32(XSCT_RESPBAL);
 regs_buff[19] = rd32(XSCT_RESPBAH);


 regs_buff[32] = rd32(XSCT_IS);
 regs_buff[33] = rd32(XSCT_IMS);
 regs_buff[34] = rd32(XSCT_IMC);
 regs_buff[35] = rd32(XSCT_IG);
 regs_buff[36] = rd32(XSCT_ICTL);
}
