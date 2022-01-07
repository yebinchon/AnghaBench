
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hnae3_client {TYPE_2__* ops; } ;
struct TYPE_7__ {int link; } ;
struct TYPE_8__ {TYPE_3__ mac; } ;
struct hclge_dev {int num_vmdq_vport; TYPE_4__ hw; TYPE_1__* vport; struct hnae3_client* nic_client; struct hnae3_client* roce_client; } ;
struct TYPE_6__ {int (* link_status_change ) (struct hnae3_handle*,int) ;} ;
struct TYPE_5__ {struct hnae3_handle roce; struct hnae3_handle nic; } ;


 int hclge_config_mac_tnl_int (struct hclge_dev*,int) ;
 int hclge_get_mac_phy_link (struct hclge_dev*) ;
 int stub1 (struct hnae3_handle*,int) ;
 int stub2 (struct hnae3_handle*,int) ;

__attribute__((used)) static void hclge_update_link_status(struct hclge_dev *hdev)
{
 struct hnae3_client *rclient = hdev->roce_client;
 struct hnae3_client *client = hdev->nic_client;
 struct hnae3_handle *rhandle;
 struct hnae3_handle *handle;
 int state;
 int i;

 if (!client)
  return;
 state = hclge_get_mac_phy_link(hdev);
 if (state != hdev->hw.mac.link) {
  for (i = 0; i < hdev->num_vmdq_vport + 1; i++) {
   handle = &hdev->vport[i].nic;
   client->ops->link_status_change(handle, state);
   hclge_config_mac_tnl_int(hdev, state);
   rhandle = &hdev->vport[i].roce;
   if (rclient && rclient->ops->link_status_change)
    rclient->ops->link_status_change(rhandle,
         state);
  }
  hdev->hw.mac.link = state;
 }
}
