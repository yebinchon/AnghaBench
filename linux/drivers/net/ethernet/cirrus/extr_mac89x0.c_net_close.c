
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int PP_BufCFG ;
 int PP_BusCTL ;
 int PP_RxCFG ;
 int PP_TxCFG ;
 int free_irq (int ,struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int writereg (struct net_device*,int ,int ) ;

__attribute__((used)) static int
net_close(struct net_device *dev)
{

 writereg(dev, PP_RxCFG, 0);
 writereg(dev, PP_TxCFG, 0);
 writereg(dev, PP_BufCFG, 0);
 writereg(dev, PP_BusCTL, 0);

 netif_stop_queue(dev);

 free_irq(dev->irq, dev);



 return 0;

}
