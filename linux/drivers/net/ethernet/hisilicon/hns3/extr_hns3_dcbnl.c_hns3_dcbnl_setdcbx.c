
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
struct TYPE_3__ {int (* setdcbx ) (struct hnae3_handle*,int) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int) ;

__attribute__((used)) static u8 hns3_dcbnl_setdcbx(struct net_device *ndev, u8 mode)
{
 struct hnae3_handle *h = hns3_get_handle(ndev);

 if (h->kinfo.dcb_ops->setdcbx)
  return h->kinfo.dcb_ops->setdcbx(h, mode);

 return 1;
}
