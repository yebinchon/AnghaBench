
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_channel {int channel; int efx; } ;
typedef int efx_qword_t ;


 int EFX_POPULATE_QWORD_2 (int ,int ,int ,int ,int ) ;
 int FSE_AZ_EV_CODE_DRV_GEN_EV ;
 int FSF_AZ_DRV_GEN_EV_MAGIC ;
 int FSF_AZ_EV_CODE ;
 int efx_farch_generate_event (int ,int ,int *) ;

__attribute__((used)) static void efx_farch_magic_event(struct efx_channel *channel, u32 magic)
{
 efx_qword_t event;

 EFX_POPULATE_QWORD_2(event, FSF_AZ_EV_CODE,
        FSE_AZ_EV_CODE_DRV_GEN_EV,
        FSF_AZ_DRV_GEN_EV_MAGIC, magic);
 efx_farch_generate_event(channel->efx, channel->channel, &event);
}
