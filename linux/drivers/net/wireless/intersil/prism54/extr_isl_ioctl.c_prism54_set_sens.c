
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; scalar_t__ disabled; } ;
typedef int islpci_private ;


 int DOT11_OID_EDTHRESHOLD ;
 int mgt_set_request (int *,int ,int ,int*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_sens(struct net_device *ndev, struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 u32 sens;


 sens = vwrq->disabled ? 20 : vwrq->value;

 return mgt_set_request(priv, DOT11_OID_EDTHRESHOLD, 0, &sens);
}
