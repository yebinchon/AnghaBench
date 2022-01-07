
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int state; } ;


 int HCLGEVF_STATE_RST_HANDLING ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool hclgevf_ae_dev_resetting(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 return test_bit(HCLGEVF_STATE_RST_HANDLING, &hdev->state);
}
