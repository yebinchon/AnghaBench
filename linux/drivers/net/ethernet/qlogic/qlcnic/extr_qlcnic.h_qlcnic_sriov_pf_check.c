
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {scalar_t__ op_mode; } ;


 scalar_t__ QLCNIC_SRIOV_PF_FUNC ;

__attribute__((used)) static inline bool qlcnic_sriov_pf_check(struct qlcnic_adapter *adapter)
{
 return (adapter->ahw->op_mode == QLCNIC_SRIOV_PF_FUNC) ? 1 : 0;
}
