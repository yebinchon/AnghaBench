
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int state; } ;


 int HCLGEVF_STATE_DOWN ;
 int clear_bit (int ,int *) ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_request_link_info (struct hclgevf_dev*) ;
 int hclgevf_reset_tqp_stats (struct hnae3_handle*) ;
 int hclgevf_update_link_mode (struct hclgevf_dev*) ;

__attribute__((used)) static int hclgevf_ae_start(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 hclgevf_reset_tqp_stats(handle);

 hclgevf_request_link_info(hdev);

 hclgevf_update_link_mode(hdev);

 clear_bit(HCLGEVF_STATE_DOWN, &hdev->state);

 return 0;
}
