
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int dummy; } ;


 int EFX_CHANNEL_MAGIC_TEST (struct efx_channel*) ;
 int efx_farch_magic_event (struct efx_channel*,int ) ;

void efx_farch_ev_test_generate(struct efx_channel *channel)
{
 efx_farch_magic_event(channel, EFX_CHANNEL_MAGIC_TEST(channel));
}
