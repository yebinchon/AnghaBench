
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnet {int dummy; } ;


 int DNET_FIFO_RX_CMD_AF_TH ;
 int DNET_FIFO_TX_DATA_AE_TH ;
 int DNET_INTERNAL_MODE_FCEN ;
 int DNET_INTERNAL_MODE_REG ;
 int DNET_SYS_CTL_RXFIFOFLUSH ;
 int DNET_SYS_CTL_TXFIFOFLUSH ;
 int RX_FIFO_TH ;
 int SYS_CTL ;
 int TX_FIFO_TH ;
 int dnet_writel (struct dnet*,int,int ) ;
 int dnet_writew_mac (struct dnet*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void dnet_reset_hw(struct dnet *bp)
{

 dnet_writew_mac(bp, DNET_INTERNAL_MODE_REG, DNET_INTERNAL_MODE_FCEN);





 dnet_writel(bp, DNET_FIFO_RX_CMD_AF_TH, RX_FIFO_TH);




 dnet_writel(bp, DNET_FIFO_TX_DATA_AE_TH, TX_FIFO_TH);


 dnet_writel(bp, DNET_SYS_CTL_RXFIFOFLUSH | DNET_SYS_CTL_TXFIFOFLUSH,
   SYS_CTL);
 msleep(1);
 dnet_writel(bp, 0, SYS_CTL);
}
