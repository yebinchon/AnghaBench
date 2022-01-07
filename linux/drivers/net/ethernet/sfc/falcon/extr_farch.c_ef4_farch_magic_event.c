
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ef4_channel {int channel; int efx; } ;
typedef int ef4_qword_t ;


 int EF4_POPULATE_QWORD_2 (int ,int ,int ,int ,int ) ;
 int FSE_AZ_EV_CODE_DRV_GEN_EV ;
 int FSF_AZ_DRV_GEN_EV_MAGIC ;
 int FSF_AZ_EV_CODE ;
 int ef4_farch_generate_event (int ,int ,int *) ;

__attribute__((used)) static void ef4_farch_magic_event(struct ef4_channel *channel, u32 magic)
{
 ef4_qword_t event;

 EF4_POPULATE_QWORD_2(event, FSF_AZ_EV_CODE,
        FSE_AZ_EV_CODE_DRV_GEN_EV,
        FSF_AZ_DRV_GEN_EV_MAGIC, magic);
 ef4_farch_generate_event(channel->efx, channel->channel, &event);
}
