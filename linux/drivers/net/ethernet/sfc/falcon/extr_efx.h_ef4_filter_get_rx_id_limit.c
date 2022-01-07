
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* filter_get_rx_id_limit ) (struct ef4_nic*) ;} ;


 int stub1 (struct ef4_nic*) ;

__attribute__((used)) static inline u32 ef4_filter_get_rx_id_limit(struct ef4_nic *efx)
{
 return efx->type->filter_get_rx_id_limit(efx);
}
