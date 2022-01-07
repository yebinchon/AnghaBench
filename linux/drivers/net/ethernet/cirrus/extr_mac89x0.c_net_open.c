
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {scalar_t__ chip_type; int curr_rx_cfg; scalar_t__ rx_mode; } ;
struct net_device {int* dev_addr; int irq; } ;


 scalar_t__ CS8900 ;
 int DEF_RX_ACCEPT ;
 int EAGAIN ;
 int ENABLE_IRQ ;
 int ETH_ALEN ;
 scalar_t__ PP_BufCFG ;
 scalar_t__ PP_BusCTL ;
 scalar_t__ PP_CS8900_ISAINT ;
 scalar_t__ PP_CS8920_ISAINT ;
 scalar_t__ PP_IA ;
 scalar_t__ PP_LineCTL ;
 scalar_t__ PP_RxCFG ;
 scalar_t__ PP_RxCTL ;
 scalar_t__ PP_TxCFG ;
 int READY_FOR_TX_ENBL ;
 int RX_CRC_ERROR_ENBL ;
 int RX_MISS_COUNT_OVRFLOW_ENBL ;
 int RX_OK_ENBL ;
 int SERIAL_RX_ON ;
 int SERIAL_TX_ON ;
 int TX_16_COL_ENBL ;
 int TX_ANY_COL_ENBL ;
 int TX_COL_COUNT_OVRFLOW_ENBL ;
 int TX_JBR_ENBL ;
 int TX_LATE_COL_ENBL ;
 int TX_LOST_CRS_ENBL ;
 int TX_OK_ENBL ;
 int TX_SQE_ERROR_ENBL ;
 int TX_UNDERRUN_ENBL ;
 int net_interrupt ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int readreg (struct net_device*,scalar_t__) ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct net_device*) ;
 int writereg (struct net_device*,scalar_t__,int) ;

__attribute__((used)) static int
net_open(struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);
 int i;


 writereg(dev, PP_BusCTL, readreg(dev, PP_BusCTL) & ~ENABLE_IRQ);


 if (request_irq(dev->irq, net_interrupt, 0, "cs89x0", dev))
  return -EAGAIN;


 if (lp->chip_type == CS8900)
  writereg(dev, PP_CS8900_ISAINT, 0);
 else
  writereg(dev, PP_CS8920_ISAINT, 0);


 for (i=0; i < ETH_ALEN/2; i++)
  writereg(dev, PP_IA+i*2, dev->dev_addr[i*2] | (dev->dev_addr[i*2+1] << 8));


 writereg(dev, PP_LineCTL, readreg(dev, PP_LineCTL) | SERIAL_RX_ON | SERIAL_TX_ON);


 lp->rx_mode = 0;
 writereg(dev, PP_RxCTL, DEF_RX_ACCEPT);

 lp->curr_rx_cfg = RX_OK_ENBL | RX_CRC_ERROR_ENBL;

 writereg(dev, PP_RxCFG, lp->curr_rx_cfg);

 writereg(dev, PP_TxCFG, TX_LOST_CRS_ENBL | TX_SQE_ERROR_ENBL | TX_OK_ENBL |
        TX_LATE_COL_ENBL | TX_JBR_ENBL | TX_ANY_COL_ENBL | TX_16_COL_ENBL);

 writereg(dev, PP_BufCFG, READY_FOR_TX_ENBL | RX_MISS_COUNT_OVRFLOW_ENBL |
   TX_COL_COUNT_OVRFLOW_ENBL | TX_UNDERRUN_ENBL);


 writereg(dev, PP_BusCTL, readreg(dev, PP_BusCTL) | ENABLE_IRQ);
 netif_start_queue(dev);
 return 0;
}
