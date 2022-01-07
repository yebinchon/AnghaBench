
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int fw_version; } ;


 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static u32 hclgevf_get_fw_version(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 return hdev->fw_version;
}
