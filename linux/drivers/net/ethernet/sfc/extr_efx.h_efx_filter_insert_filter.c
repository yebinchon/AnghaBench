
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct efx_filter_spec {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int (* filter_insert ) (struct efx_nic*,struct efx_filter_spec*,int) ;} ;


 int stub1 (struct efx_nic*,struct efx_filter_spec*,int) ;

__attribute__((used)) static inline s32 efx_filter_insert_filter(struct efx_nic *efx,
        struct efx_filter_spec *spec,
        bool replace_equal)
{
 return efx->type->filter_insert(efx, spec, replace_equal);
}
