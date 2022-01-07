
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
typedef int islpci_private ;


 int DOT11_OID_RTSTHRESH ;
 int mgt_set_request (int *,int ,int ,int *) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_rts(struct net_device *ndev, struct iw_request_info *info,
  struct iw_param *vwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);

 return mgt_set_request(priv, DOT11_OID_RTSTHRESH, 0, &vwrq->value);
}
