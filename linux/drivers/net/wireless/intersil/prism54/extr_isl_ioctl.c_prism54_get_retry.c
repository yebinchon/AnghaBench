
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {int u; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; scalar_t__ disabled; } ;
typedef int islpci_private ;


 int DOT11_OID_LONGRETRIES ;
 int DOT11_OID_MAXTXLIFETIME ;
 int DOT11_OID_SHORTRETRIES ;
 int IW_RETRY_LIFETIME ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 int IW_RETRY_TYPE ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_retry(struct net_device *ndev, struct iw_request_info *info,
    struct iw_param *vwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 union oid_res_t r;
 int rvalue = 0;
 vwrq->disabled = 0;

 if ((vwrq->flags & IW_RETRY_TYPE) == IW_RETRY_LIFETIME) {

  rvalue =
      mgt_get_request(priv, DOT11_OID_MAXTXLIFETIME, 0, ((void*)0), &r);
  vwrq->value = r.u * 1024;
  vwrq->flags = IW_RETRY_LIFETIME;
 } else if ((vwrq->flags & IW_RETRY_LONG)) {

  rvalue |=
      mgt_get_request(priv, DOT11_OID_LONGRETRIES, 0, ((void*)0), &r);
  vwrq->value = r.u;
  vwrq->flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
 } else {

  rvalue |=
      mgt_get_request(priv, DOT11_OID_SHORTRETRIES, 0, ((void*)0), &r);
  vwrq->value = r.u;
  vwrq->flags = IW_RETRY_LIMIT | IW_RETRY_SHORT;
 }

 return rvalue;
}
