
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nb8800_priv {int rx_dma_config; } ;


 int DESC_ID ;
 int NB8800_RXC_CR ;
 int RCR_RFI (int) ;
 int nb8800_clearl (struct nb8800_priv*,int ,int ) ;
 int nb8800_tangox_init (struct net_device*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nb8800_tango4_init(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 int err;

 err = nb8800_tangox_init(dev);
 if (err)
  return err;






 nb8800_clearl(priv, NB8800_RXC_CR, RCR_RFI(7));


 priv->rx_dma_config |= DESC_ID;

 return 0;
}
