
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {int u; char* ptr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; } ;
typedef int islpci_private ;


 int DOT11_OID_RATES ;
 int GEN_OID_LINKSTATE ;
 int kfree (char*) ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_rate(struct net_device *ndev,
   struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 int rvalue;
 char *data;
 union oid_res_t r;


 if ((rvalue = mgt_get_request(priv, GEN_OID_LINKSTATE, 0, ((void*)0), &r)))
  return rvalue;
 vwrq->value = r.u * 500000;


 rvalue = mgt_get_request(priv, DOT11_OID_RATES, 0, ((void*)0), &r);
 if (rvalue) {
  kfree(r.ptr);
  return rvalue;
 }
 data = r.ptr;
 vwrq->fixed = (data[0] != 0) && (data[1] == 0);
 kfree(r.ptr);

 return 0;
}
