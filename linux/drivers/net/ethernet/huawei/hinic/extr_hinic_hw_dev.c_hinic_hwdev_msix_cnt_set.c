
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_hwdev {int hwif; } ;


 int hinic_msix_attr_cnt_clear (int ,int ) ;

int hinic_hwdev_msix_cnt_set(struct hinic_hwdev *hwdev, u16 msix_index)
{
 return hinic_msix_attr_cnt_clear(hwdev->hwif, msix_index);
}
