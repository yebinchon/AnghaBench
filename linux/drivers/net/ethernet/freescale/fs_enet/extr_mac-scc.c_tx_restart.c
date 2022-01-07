
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fs_enet_private {int dummy; } ;


 int CPM_CR_RESTART_TX ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int scc_cr_cmd (struct fs_enet_private*,int ) ;

__attribute__((used)) static void tx_restart(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 scc_cr_cmd(fep, CPM_CR_RESTART_TX);
}
