
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {int u; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
typedef int islpci_private ;


 int DOT11_OID_RTSTHRESH ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_rts(struct net_device *ndev, struct iw_request_info *info,
  struct iw_param *vwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 union oid_res_t r;
 int rvalue;


 rvalue = mgt_get_request(priv, DOT11_OID_RTSTHRESH, 0, ((void*)0), &r);
 vwrq->value = r.u;

 return rvalue;
}
