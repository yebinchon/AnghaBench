
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* vector_list; } ;
struct lan743x_adapter {TYPE_2__ intr; } ;
struct TYPE_3__ {int int_mask; int flags; } ;


 int LAN743X_MAX_VECTOR_COUNT ;

__attribute__((used)) static u32 lan743x_intr_get_vector_flags(struct lan743x_adapter *adapter,
      u32 int_mask)
{
 int index;

 for (index = 0; index < LAN743X_MAX_VECTOR_COUNT; index++) {
  if (adapter->intr.vector_list[index].int_mask & int_mask)
   return adapter->intr.vector_list[index].flags;
 }
 return 0;
}
