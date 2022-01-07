
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_tqps; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hclgevf_dev {scalar_t__ reset_type; int state; } ;


 int HCLGEVF_STATE_DOWN ;
 scalar_t__ HNAE3_VF_RESET ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 scalar_t__ hclgevf_reset_tqp (struct hnae3_handle*,int) ;
 int hclgevf_reset_tqp_stats (struct hnae3_handle*) ;
 int hclgevf_update_link_status (struct hclgevf_dev*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hclgevf_ae_stop(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 int i;

 set_bit(HCLGEVF_STATE_DOWN, &hdev->state);

 if (hdev->reset_type != HNAE3_VF_RESET)
  for (i = 0; i < handle->kinfo.num_tqps; i++)
   if (hclgevf_reset_tqp(handle, i))
    break;

 hclgevf_reset_tqp_stats(handle);
 hclgevf_update_link_status(hdev, 0);
}
