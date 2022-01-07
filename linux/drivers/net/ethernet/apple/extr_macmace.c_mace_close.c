
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mace_data {struct mace* mace; } ;
struct mace {int imr; scalar_t__ maccc; } ;


 int mace_dma_off (struct net_device*) ;
 struct mace_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mace_close(struct net_device *dev)
{
 struct mace_data *mp = netdev_priv(dev);
 volatile struct mace *mb = mp->mace;

 mb->maccc = 0;
 mb->imr = 0xFF;
 mace_dma_off(dev);

 return 0;
}
