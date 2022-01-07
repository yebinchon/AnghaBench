
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int nbufs; } ;
struct net_device {int dummy; } ;


 int NUM_BUFS ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int xge_port_init (struct net_device*) ;
 int xge_port_reset (struct net_device*) ;

__attribute__((used)) static int xge_init_hw(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 int ret;

 ret = xge_port_reset(ndev);
 if (ret)
  return ret;

 xge_port_init(ndev);
 pdata->nbufs = NUM_BUFS;

 return 0;
}
