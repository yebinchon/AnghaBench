
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_hwdev {int hwif; } ;
typedef enum hinic_msix_state { ____Placeholder_hinic_msix_state } hinic_msix_state ;


 int hinic_set_msix_state (int ,int ,int) ;

void hinic_hwdev_set_msix_state(struct hinic_hwdev *hwdev, u16 msix_index,
    enum hinic_msix_state flag)
{
 hinic_set_msix_state(hwdev->hwif, msix_index, flag);
}
