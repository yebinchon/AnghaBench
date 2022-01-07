
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct adapter* ml_priv; } ;
struct ethtool_regs {int version; } ;
struct adapter {int dummy; } ;


 int A_CSPI_INTR_ENABLE ;
 int A_CSPI_RX_AE_WM ;
 int A_ESPI_GOSTAT ;
 int A_ESPI_SCH_TOKEN0 ;
 int A_MC3_CFG ;
 int A_MC4_INT_CAUSE ;
 int A_MC5_CONFIG ;
 int A_MC5_MASK_WRITE_CMD ;
 int A_PL_CAUSE ;
 int A_PL_ENABLE ;
 int A_RAT_INTR_CAUSE ;
 int A_RAT_ROUTE_CONTROL ;
 int A_SG_RESPACCUTIMER ;
 int A_TPI_ADDR ;
 int A_TPI_PAR ;
 int A_TP_IN_CONFIG ;
 int A_TP_TX_DROP_COUNT ;
 int A_ULP_PIO_CTRL ;
 int A_ULP_ULIMIT ;
 int T2_REGMAP_SIZE ;
 int memset (void*,int ,int ) ;
 int reg_block_dump (struct adapter*,void*,int ,int ) ;

__attribute__((used)) static void get_regs(struct net_device *dev, struct ethtool_regs *regs,
       void *buf)
{
 struct adapter *ap = dev->ml_priv;




 regs->version = 2;

 memset(buf, 0, T2_REGMAP_SIZE);
 reg_block_dump(ap, buf, 0, A_SG_RESPACCUTIMER);
 reg_block_dump(ap, buf, A_MC3_CFG, A_MC4_INT_CAUSE);
 reg_block_dump(ap, buf, A_TPI_ADDR, A_TPI_PAR);
 reg_block_dump(ap, buf, A_TP_IN_CONFIG, A_TP_TX_DROP_COUNT);
 reg_block_dump(ap, buf, A_RAT_ROUTE_CONTROL, A_RAT_INTR_CAUSE);
 reg_block_dump(ap, buf, A_CSPI_RX_AE_WM, A_CSPI_INTR_ENABLE);
 reg_block_dump(ap, buf, A_ESPI_SCH_TOKEN0, A_ESPI_GOSTAT);
 reg_block_dump(ap, buf, A_ULP_ULIMIT, A_ULP_PIO_CTRL);
 reg_block_dump(ap, buf, A_PL_ENABLE, A_PL_CAUSE);
 reg_block_dump(ap, buf, A_MC5_CONFIG, A_MC5_MASK_WRITE_CMD);
}
