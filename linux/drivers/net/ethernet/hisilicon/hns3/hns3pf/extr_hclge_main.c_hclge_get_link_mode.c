
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_4__ {unsigned long* supported; unsigned long* advertising; } ;
struct TYPE_3__ {TYPE_2__ mac; } ;
struct hclge_dev {TYPE_1__ hw; } ;


 unsigned int BITS_TO_LONGS (int ) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static void hclge_get_link_mode(struct hnae3_handle *handle,
    unsigned long *supported,
    unsigned long *advertising)
{
 unsigned int size = BITS_TO_LONGS(__ETHTOOL_LINK_MODE_MASK_NBITS);
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 unsigned int idx = 0;

 for (; idx < size; idx++) {
  supported[idx] = hdev->hw.mac.supported[idx];
  advertising[idx] = hdev->hw.mac.advertising[idx];
 }
}
