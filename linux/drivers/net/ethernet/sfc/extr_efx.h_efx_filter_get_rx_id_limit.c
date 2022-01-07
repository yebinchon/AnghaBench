
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* filter_get_rx_id_limit ) (struct efx_nic*) ;} ;


 int stub1 (struct efx_nic*) ;

__attribute__((used)) static inline u32 efx_filter_get_rx_id_limit(struct efx_nic *efx)
{
 return efx->type->filter_get_rx_id_limit(efx);
}
