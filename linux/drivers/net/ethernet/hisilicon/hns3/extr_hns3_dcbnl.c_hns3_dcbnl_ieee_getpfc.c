
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ieee_pfc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb_ops; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {int (* ieee_getpfc ) (struct hnae3_handle*,struct ieee_pfc*) ;} ;


 int EBUSY ;
 int EOPNOTSUPP ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 scalar_t__ hns3_nic_resetting (struct net_device*) ;
 int stub1 (struct hnae3_handle*,struct ieee_pfc*) ;

__attribute__((used)) static int hns3_dcbnl_ieee_getpfc(struct net_device *ndev, struct ieee_pfc *pfc)
{
 struct hnae3_handle *h = hns3_get_handle(ndev);

 if (hns3_nic_resetting(ndev))
  return -EBUSY;

 if (h->kinfo.dcb_ops->ieee_getpfc)
  return h->kinfo.dcb_ops->ieee_getpfc(h, pfc);

 return -EOPNOTSUPP;
}
