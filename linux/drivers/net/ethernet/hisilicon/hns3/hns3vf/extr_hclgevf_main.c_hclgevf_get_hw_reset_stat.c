
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int hw; } ;


 int HCLGEVF_RST_ING ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_read_dev (int *,int ) ;

__attribute__((used)) static bool hclgevf_get_hw_reset_stat(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 return !!hclgevf_read_dev(&hdev->hw, HCLGEVF_RST_ING);
}
