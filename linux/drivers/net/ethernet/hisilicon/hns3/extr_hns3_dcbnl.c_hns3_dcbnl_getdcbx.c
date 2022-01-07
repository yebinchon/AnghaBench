
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb_ops; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {int (* getdcbx ) (struct hnae3_handle*) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static u8 hns3_dcbnl_getdcbx(struct net_device *ndev)
{
 struct hnae3_handle *h = hns3_get_handle(ndev);

 if (h->kinfo.dcb_ops->getdcbx)
  return h->kinfo.dcb_ops->getdcbx(h);

 return 0;
}
