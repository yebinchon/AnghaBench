
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_dcb {TYPE_2__* adapter; int state; } ;
struct TYPE_4__ {TYPE_1__* netdev; } ;
struct TYPE_3__ {int * dcbnl_ops; } ;


 int QLCNIC_DCB_STATE ;
 int qlcnic_dcbnl_ops ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void __qlcnic_init_dcbnl_ops(struct qlcnic_dcb *dcb)
{
 if (test_bit(QLCNIC_DCB_STATE, &dcb->state))
  dcb->adapter->netdev->dcbnl_ops = &qlcnic_dcbnl_ops;
}
