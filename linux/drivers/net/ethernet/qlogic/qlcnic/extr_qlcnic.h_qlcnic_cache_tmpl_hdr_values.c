
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_fw_dump {int dummy; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* cache_tmpl_hdr_values ) (struct qlcnic_fw_dump*) ;} ;


 int stub1 (struct qlcnic_fw_dump*) ;

__attribute__((used)) static inline void qlcnic_cache_tmpl_hdr_values(struct qlcnic_adapter *adapter,
      struct qlcnic_fw_dump *fw_dump)
{
 adapter->ahw->hw_ops->cache_tmpl_hdr_values(fw_dump);
}
