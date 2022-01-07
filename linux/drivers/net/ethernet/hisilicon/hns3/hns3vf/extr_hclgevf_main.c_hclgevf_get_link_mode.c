
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct TYPE_3__ {unsigned long supported; unsigned long advertising; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; } ;


 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static void hclgevf_get_link_mode(struct hnae3_handle *handle,
      unsigned long *supported,
      unsigned long *advertising)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 *supported = hdev->hw.mac.supported;
 *advertising = hdev->hw.mac.advertising;
}
