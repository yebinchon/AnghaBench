
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;


 int B3_RI_CTRL ;
 int BMU_CLR_IRQ_PAR ;
 int BMU_CLR_IRQ_TCP ;
 int GMF_CLI_TX_PE ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int RAM_BUFFER (unsigned int,int ) ;
 int RI_CLR_RD_PERR ;
 int RI_CLR_WR_PERR ;
 int SK_REG (unsigned int,int ) ;
 int TX_GMF_CTRL_T ;
 int Y2_IS_PAR_MAC1 ;
 int Y2_IS_PAR_RD1 ;
 int Y2_IS_PAR_RX1 ;
 int Y2_IS_PAR_WR1 ;
 int Y2_IS_TCP_TXA1 ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,int) ;
 int * rxqaddr ;
 int sky2_write16 (struct sky2_hw*,int ,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;
 int * txqaddr ;

__attribute__((used)) static void sky2_hw_error(struct sky2_hw *hw, unsigned port, u32 status)
{
 struct net_device *dev = hw->dev[port];

 if (net_ratelimit())
  netdev_info(dev, "hw error interrupt status 0x%x\n", status);

 if (status & Y2_IS_PAR_RD1) {
  if (net_ratelimit())
   netdev_err(dev, "ram data read parity error\n");

  sky2_write16(hw, RAM_BUFFER(port, B3_RI_CTRL), RI_CLR_RD_PERR);
 }

 if (status & Y2_IS_PAR_WR1) {
  if (net_ratelimit())
   netdev_err(dev, "ram data write parity error\n");

  sky2_write16(hw, RAM_BUFFER(port, B3_RI_CTRL), RI_CLR_WR_PERR);
 }

 if (status & Y2_IS_PAR_MAC1) {
  if (net_ratelimit())
   netdev_err(dev, "MAC parity error\n");
  sky2_write8(hw, SK_REG(port, TX_GMF_CTRL_T), GMF_CLI_TX_PE);
 }

 if (status & Y2_IS_PAR_RX1) {
  if (net_ratelimit())
   netdev_err(dev, "RX parity error\n");
  sky2_write32(hw, Q_ADDR(rxqaddr[port], Q_CSR), BMU_CLR_IRQ_PAR);
 }

 if (status & Y2_IS_TCP_TXA1) {
  if (net_ratelimit())
   netdev_err(dev, "TCP segmentation error\n");
  sky2_write32(hw, Q_ADDR(txqaddr[port], Q_CSR), BMU_CLR_IRQ_TCP);
 }
}
