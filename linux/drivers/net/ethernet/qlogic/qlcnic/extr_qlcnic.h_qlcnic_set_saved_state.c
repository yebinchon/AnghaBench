
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* set_saved_state ) (void*,int ,int ) ;} ;


 int stub1 (void*,int ,int ) ;

__attribute__((used)) static inline void qlcnic_set_saved_state(struct qlcnic_adapter *adapter,
       void *t_hdr, u32 index, u32 value)
{
 adapter->ahw->hw_ops->set_saved_state(t_hdr, index, value);
}
