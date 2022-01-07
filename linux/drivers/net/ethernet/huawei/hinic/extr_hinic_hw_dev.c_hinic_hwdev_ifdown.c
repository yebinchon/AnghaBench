
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_cap {int num_qps; } ;
struct hinic_func_to_io {int dummy; } ;
struct hinic_hwdev {struct hinic_cap nic_cap; struct hinic_func_to_io func_to_io; } ;


 int clear_io_resources (struct hinic_hwdev*) ;
 int hinic_io_destroy_qps (struct hinic_func_to_io*,int ) ;
 int hinic_io_free (struct hinic_func_to_io*) ;

void hinic_hwdev_ifdown(struct hinic_hwdev *hwdev)
{
 struct hinic_func_to_io *func_to_io = &hwdev->func_to_io;
 struct hinic_cap *nic_cap = &hwdev->nic_cap;

 clear_io_resources(hwdev);

 hinic_io_destroy_qps(func_to_io, nic_cap->num_qps);
 hinic_io_free(func_to_io);
}
