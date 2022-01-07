
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct efx_nic {TYPE_1__* type; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
struct TYPE_2__ {int (* filter_remove_safe ) (struct efx_nic*,int,int ) ;} ;


 int stub1 (struct efx_nic*,int,int ) ;

__attribute__((used)) static inline int efx_filter_remove_id_safe(struct efx_nic *efx,
         enum efx_filter_priority priority,
         u32 filter_id)
{
 return efx->type->filter_remove_safe(efx, priority, filter_id);
}
