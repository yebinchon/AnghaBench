
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_sq {int dummy; } ;
struct hinic_qp {struct hinic_sq sq; } ;
struct hinic_func_to_io {struct hinic_qp* qps; } ;
struct hinic_hwdev {struct hinic_func_to_io func_to_io; } ;


 int hinic_hwdev_num_qps (struct hinic_hwdev*) ;

struct hinic_sq *hinic_hwdev_get_sq(struct hinic_hwdev *hwdev, int i)
{
 struct hinic_func_to_io *func_to_io = &hwdev->func_to_io;
 struct hinic_qp *qp = &func_to_io->qps[i];

 if (i >= hinic_hwdev_num_qps(hwdev))
  return ((void*)0);

 return &qp->sq;
}
