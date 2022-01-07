
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hinic_hwdev {int hwif; } ;


 int hinic_msix_attr_set (int ,int ,int ,int ,int ,int ,int ) ;

int hinic_hwdev_msix_set(struct hinic_hwdev *hwdev, u16 msix_index,
    u8 pending_limit, u8 coalesc_timer,
    u8 lli_timer_cfg, u8 lli_credit_limit,
    u8 resend_timer)
{
 return hinic_msix_attr_set(hwdev->hwif, msix_index,
       pending_limit, coalesc_timer,
       lli_timer_cfg, lli_credit_limit,
       resend_timer);
}
