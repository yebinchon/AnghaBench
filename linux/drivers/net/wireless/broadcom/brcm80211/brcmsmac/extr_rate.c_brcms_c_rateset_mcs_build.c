
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcms_c_rateset {int * mcs; } ;
struct TYPE_2__ {int * mcs; } ;


 int MCSSET_LEN ;
 int brcms_c_rateset_mcs_upd (struct brcms_c_rateset*,int ) ;
 TYPE_1__ cck_ofdm_mimo_rates ;
 int memcpy (int *,int *,int ) ;

void brcms_c_rateset_mcs_build(struct brcms_c_rateset *rateset, u8 txstreams)
{
 memcpy(&rateset->mcs[0], &cck_ofdm_mimo_rates.mcs[0], MCSSET_LEN);
 brcms_c_rateset_mcs_upd(rateset, txstreams);
}
