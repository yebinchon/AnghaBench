
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * dcbnl_ops; } ;
struct TYPE_2__ {int dcb_ops; struct net_device* netdev; } ;
struct hnae3_handle {int flags; TYPE_1__ kinfo; } ;


 int HNAE3_SUPPORT_VF ;
 int hns3_dcbnl_ops ;

void hns3_dcbnl_setup(struct hnae3_handle *handle)
{
 struct net_device *dev = handle->kinfo.netdev;

 if ((!handle->kinfo.dcb_ops) || (handle->flags & HNAE3_SUPPORT_VF))
  return;

 dev->dcbnl_ops = &hns3_dcbnl_ops;
}
