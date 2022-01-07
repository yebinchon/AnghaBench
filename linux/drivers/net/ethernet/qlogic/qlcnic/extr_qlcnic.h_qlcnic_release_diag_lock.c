
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;


 int __QLCNIC_DIAG_MODE ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void qlcnic_release_diag_lock(struct qlcnic_adapter *adapter)
{
 clear_bit(__QLCNIC_DIAG_MODE, &adapter->state);
}
