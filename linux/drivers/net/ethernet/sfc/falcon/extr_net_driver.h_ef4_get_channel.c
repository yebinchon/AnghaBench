
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {unsigned int n_channels; struct ef4_channel** channel; } ;
struct ef4_channel {int dummy; } ;


 int EF4_BUG_ON_PARANOID (int) ;

__attribute__((used)) static inline struct ef4_channel *
ef4_get_channel(struct ef4_nic *efx, unsigned index)
{
 EF4_BUG_ON_PARANOID(index >= efx->n_channels);
 return efx->channel[index];
}
