
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* disable_sds_intr ) (struct qlcnic_adapter*,struct qlcnic_host_sds_ring*) ;} ;


 int stub1 (struct qlcnic_adapter*,struct qlcnic_host_sds_ring*) ;

__attribute__((used)) static inline void
qlcnic_disable_sds_intr(struct qlcnic_adapter *adapter,
   struct qlcnic_host_sds_ring *sds_ring)
{
 if (adapter->ahw->hw_ops->disable_sds_intr)
  adapter->ahw->hw_ops->disable_sds_intr(adapter, sds_ring);
}
