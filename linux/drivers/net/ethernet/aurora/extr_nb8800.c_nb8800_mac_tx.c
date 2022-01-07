
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nb8800_priv {int dummy; } ;


 int NB8800_TXC_CR ;
 int NB8800_TX_CTL1 ;
 int TCR_EN ;
 int TX_EN ;
 int cpu_relax () ;
 int nb8800_modb (struct nb8800_priv*,int ,int ,int) ;
 int nb8800_readl (struct nb8800_priv*,int ) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nb8800_mac_tx(struct net_device *dev, bool enable)
{
 struct nb8800_priv *priv = netdev_priv(dev);

 while (nb8800_readl(priv, NB8800_TXC_CR) & TCR_EN)
  cpu_relax();

 nb8800_modb(priv, NB8800_TX_CTL1, TX_EN, enable);
}
