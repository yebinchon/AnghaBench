
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hnae3_handle {struct hnae3_client* client; } ;
struct hnae3_client {TYPE_1__* ops; } ;
struct TYPE_5__ {int link; } ;
struct TYPE_6__ {TYPE_2__ mac; } ;
struct hclgevf_dev {TYPE_3__ hw; int state; struct hnae3_client* roce_client; struct hnae3_handle nic; struct hnae3_handle roce; } ;
struct TYPE_4__ {int (* link_status_change ) (struct hnae3_handle*,int) ;} ;


 int HCLGEVF_STATE_DOWN ;
 int stub1 (struct hnae3_handle*,int) ;
 int stub2 (struct hnae3_handle*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void hclgevf_update_link_status(struct hclgevf_dev *hdev, int link_state)
{
 struct hnae3_handle *rhandle = &hdev->roce;
 struct hnae3_handle *handle = &hdev->nic;
 struct hnae3_client *rclient;
 struct hnae3_client *client;

 client = handle->client;
 rclient = hdev->roce_client;

 link_state =
  test_bit(HCLGEVF_STATE_DOWN, &hdev->state) ? 0 : link_state;

 if (link_state != hdev->hw.mac.link) {
  client->ops->link_status_change(handle, !!link_state);
  if (rclient && rclient->ops->link_status_change)
   rclient->ops->link_status_change(rhandle, !!link_state);
  hdev->hw.mac.link = link_state;
 }
}
