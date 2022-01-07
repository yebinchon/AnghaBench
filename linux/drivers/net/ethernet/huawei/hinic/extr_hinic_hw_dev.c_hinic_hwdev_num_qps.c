
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_cap {int num_qps; } ;
struct hinic_hwdev {struct hinic_cap nic_cap; } ;



int hinic_hwdev_num_qps(struct hinic_hwdev *hwdev)
{
 struct hinic_cap *nic_cap = &hwdev->nic_cap;

 return nic_cap->num_qps;
}
