
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_2__ {int rev; } ;
struct adapter {TYPE_1__ params; } ;


 int A_CPL_MAP_TBL_DATA ;
 int A_CPL_SWITCH_CNTRL ;
 int A_MPS_INT_CAUSE ;
 int A_SG_HI_DRB_HI_THRSH ;
 int A_SG_RSPQ_CREDIT_RETURN ;
 int A_SMB_GLOBAL_TIME_CFG ;
 int A_ULPRX_PBL_ULIMIT ;
 int A_ULPTX_CONFIG ;
 int A_XGM_RX_SPI4_SOP_EOP_CNT ;
 int A_XGM_SERDES_STAT3 ;
 int A_XGM_SERDES_STATUS0 ;
 int T3_REGMAP_SIZE ;
 int XGM_REG (int ,int) ;
 int is_pcie (struct adapter*) ;
 int memset (void*,int ,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int reg_block_dump (struct adapter*,void*,int ,int ) ;

__attribute__((used)) static void get_regs(struct net_device *dev, struct ethtool_regs *regs,
       void *buf)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *ap = pi->adapter;







 regs->version = 3 | (ap->params.rev << 10) | (is_pcie(ap) << 31);






 memset(buf, 0, T3_REGMAP_SIZE);
 reg_block_dump(ap, buf, 0, A_SG_RSPQ_CREDIT_RETURN);
 reg_block_dump(ap, buf, A_SG_HI_DRB_HI_THRSH, A_ULPRX_PBL_ULIMIT);
 reg_block_dump(ap, buf, A_ULPTX_CONFIG, A_MPS_INT_CAUSE);
 reg_block_dump(ap, buf, A_CPL_SWITCH_CNTRL, A_CPL_MAP_TBL_DATA);
 reg_block_dump(ap, buf, A_SMB_GLOBAL_TIME_CFG, A_XGM_SERDES_STAT3);
 reg_block_dump(ap, buf, A_XGM_SERDES_STATUS0,
         XGM_REG(A_XGM_SERDES_STAT3, 1));
 reg_block_dump(ap, buf, XGM_REG(A_XGM_SERDES_STATUS0, 1),
         XGM_REG(A_XGM_RX_SPI4_SOP_EOP_CNT, 1));
}
