
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunqe {int dummy; } ;
struct net_device {int dummy; } ;


 struct sunqe* netdev_priv (struct net_device*) ;
 int qe_stop (struct sunqe*) ;

__attribute__((used)) static int qe_close(struct net_device *dev)
{
 struct sunqe *qep = netdev_priv(dev);

 qe_stop(qep);
 return 0;
}
