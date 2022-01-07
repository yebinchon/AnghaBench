
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_3__ {int module_type; int media_type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; } ;


 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static void hclgevf_get_media_type(struct hnae3_handle *handle, u8 *media_type,
       u8 *module_type)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 if (media_type)
  *media_type = hdev->hw.mac.media_type;

 if (module_type)
  *module_type = hdev->hw.mac.module_type;
}
