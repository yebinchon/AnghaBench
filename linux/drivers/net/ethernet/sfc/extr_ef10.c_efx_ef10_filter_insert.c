
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int filter_sem; } ;
struct efx_filter_spec {int dummy; } ;
typedef int s32 ;


 int down_read (int *) ;
 int efx_ef10_filter_insert_locked (struct efx_nic*,struct efx_filter_spec*,int) ;
 int up_read (int *) ;

__attribute__((used)) static s32 efx_ef10_filter_insert(struct efx_nic *efx,
      struct efx_filter_spec *spec,
      bool replace_equal)
{
 s32 ret;

 down_read(&efx->filter_sem);
 ret = efx_ef10_filter_insert_locked(efx, spec, replace_equal);
 up_read(&efx->filter_sem);

 return ret;
}
