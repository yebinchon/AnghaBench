
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunqe {int mconfig; } ;
struct net_device {int dummy; } ;


 int MREGS_MCONFIG_MBAENAB ;
 int MREGS_MCONFIG_RXENAB ;
 int MREGS_MCONFIG_TXENAB ;
 struct sunqe* netdev_priv (struct net_device*) ;
 int qe_init (struct sunqe*,int ) ;

__attribute__((used)) static int qe_open(struct net_device *dev)
{
 struct sunqe *qep = netdev_priv(dev);

 qep->mconfig = (MREGS_MCONFIG_TXENAB |
   MREGS_MCONFIG_RXENAB |
   MREGS_MCONFIG_MBAENAB);
 return qe_init(qep, 0);
}
