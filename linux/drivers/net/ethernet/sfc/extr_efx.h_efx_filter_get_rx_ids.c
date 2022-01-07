
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct efx_nic {TYPE_1__* type; } ;
typedef int s32 ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
struct TYPE_2__ {int (* filter_get_rx_ids ) (struct efx_nic*,int,int *,int ) ;} ;


 int stub1 (struct efx_nic*,int,int *,int ) ;

__attribute__((used)) static inline s32 efx_filter_get_rx_ids(struct efx_nic *efx,
     enum efx_filter_priority priority,
     u32 *buf, u32 size)
{
 return efx->type->filter_get_rx_ids(efx, priority, buf, size);
}
