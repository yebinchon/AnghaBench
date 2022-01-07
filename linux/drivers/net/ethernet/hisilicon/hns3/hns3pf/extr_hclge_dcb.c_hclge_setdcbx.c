
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dcbx_cap; } ;


 int DCB_CAP_DCBX_HOST ;
 int DCB_CAP_DCBX_LLD_MANAGED ;
 int DCB_CAP_DCBX_VER_CEE ;
 int drv ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int netif_dbg (struct hnae3_handle*,int ,struct net_device*,char*,int) ;

__attribute__((used)) static u8 hclge_setdcbx(struct hnae3_handle *h, u8 mode)
{
 struct hclge_vport *vport = hclge_get_vport(h);
 struct net_device *netdev = h->kinfo.netdev;
 struct hclge_dev *hdev = vport->back;

 netif_dbg(h, drv, netdev, "set dcbx: mode=%u\n", mode);


 if ((mode & DCB_CAP_DCBX_LLD_MANAGED) ||
     (mode & DCB_CAP_DCBX_VER_CEE) ||
     !(mode & DCB_CAP_DCBX_HOST))
  return 1;

 hdev->dcbx_cap = mode;

 return 0;
}
