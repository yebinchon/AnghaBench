
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct moxart_mac_priv_t {scalar_t__ base; } ;


 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void moxart_emac_write(struct net_device *ndev,
         unsigned int reg, unsigned long value)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);

 writel(value, priv->base + reg);
}
