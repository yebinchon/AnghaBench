
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct nb8800_priv {int dummy; } ;


 int NB8800_STAT_DATA ;
 int NB8800_STAT_INDEX ;
 int nb8800_readl (struct nb8800_priv*,int ) ;
 int nb8800_writeb (struct nb8800_priv*,int ,int) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 nb8800_read_stat(struct net_device *dev, int index)
{
 struct nb8800_priv *priv = netdev_priv(dev);

 nb8800_writeb(priv, NB8800_STAT_INDEX, index);

 return nb8800_readl(priv, NB8800_STAT_DATA);
}
