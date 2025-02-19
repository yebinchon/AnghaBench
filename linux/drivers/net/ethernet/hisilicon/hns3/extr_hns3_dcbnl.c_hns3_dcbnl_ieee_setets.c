
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ieee_ets {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb_ops; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {int (* ieee_setets ) (struct hnae3_handle*,struct ieee_ets*) ;} ;


 int EBUSY ;
 int EOPNOTSUPP ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 scalar_t__ hns3_nic_resetting (struct net_device*) ;
 int stub1 (struct hnae3_handle*,struct ieee_ets*) ;

__attribute__((used)) static int hns3_dcbnl_ieee_setets(struct net_device *ndev, struct ieee_ets *ets)
{
 struct hnae3_handle *h = hns3_get_handle(ndev);

 if (hns3_nic_resetting(ndev))
  return -EBUSY;

 if (h->kinfo.dcb_ops->ieee_setets)
  return h->kinfo.dcb_ops->ieee_setets(h, ets);

 return -EOPNOTSUPP;
}
