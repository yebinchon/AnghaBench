
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {unsigned int n_channels; struct efx_channel** channel; } ;
struct efx_channel {int dummy; } ;


 int EFX_WARN_ON_ONCE_PARANOID (int) ;

__attribute__((used)) static inline struct efx_channel *
efx_get_channel(struct efx_nic *efx, unsigned index)
{
 EFX_WARN_ON_ONCE_PARANOID(index >= efx->n_channels);
 return efx->channel[index];
}
