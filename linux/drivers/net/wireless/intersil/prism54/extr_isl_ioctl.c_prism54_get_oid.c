
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union oid_res_t {int ptr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
typedef enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;
struct TYPE_2__ {int flags; } ;


 int OID_FLAG_TYPE ;
 int OID_TYPE_U32 ;
 TYPE_1__* isl_oid ;
 int kfree (int ) ;
 int mgt_get_request (int ,int,int ,int *,union oid_res_t*) ;
 int mgt_response_to_str (int,union oid_res_t*,char*) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_oid(struct net_device *ndev, struct iw_request_info *info,
  struct iw_point *dwrq, char *extra)
{
 union oid_res_t r;
 int rvalue;
 enum oid_num_t n = dwrq->flags;

 rvalue = mgt_get_request(netdev_priv(ndev), n, 0, ((void*)0), &r);
 dwrq->length = mgt_response_to_str(n, &r, extra);
 if ((isl_oid[n].flags & OID_FLAG_TYPE) != OID_TYPE_U32)
  kfree(r.ptr);
 return rvalue;
}
