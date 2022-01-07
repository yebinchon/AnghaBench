
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {unsigned int (* dma_in ) (struct temac_local*,int ) ;int ndev; int (* dma_out ) (struct temac_local*,int ,unsigned int) ;} ;
struct net_device {int dev; } ;
typedef int irqreturn_t ;


 unsigned int IRQ_COAL ;
 unsigned int IRQ_DLY ;
 unsigned int IRQ_DMAERR ;
 unsigned int IRQ_ERR ;
 int IRQ_HANDLED ;
 int RX_CHNL_STS ;
 int RX_IRQ_REG ;
 int dev_err_ratelimited (int *,char*,unsigned int,unsigned int) ;
 int ll_temac_recv (int ) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 unsigned int stub1 (struct temac_local*,int ) ;
 int stub2 (struct temac_local*,int ,unsigned int) ;
 unsigned int stub3 (struct temac_local*,int ) ;

__attribute__((used)) static irqreturn_t ll_temac_rx_irq(int irq, void *_ndev)
{
 struct net_device *ndev = _ndev;
 struct temac_local *lp = netdev_priv(ndev);
 unsigned int status;


 status = lp->dma_in(lp, RX_IRQ_REG);
 lp->dma_out(lp, RX_IRQ_REG, status);

 if (status & (IRQ_COAL | IRQ_DLY))
  ll_temac_recv(lp->ndev);
 if (status & (IRQ_ERR | IRQ_DMAERR))
  dev_err_ratelimited(&ndev->dev,
        "RX error 0x%x RX_CHNL_STS=0x%08x\n",
        status, lp->dma_in(lp, RX_CHNL_STS));

 return IRQ_HANDLED;
}
