
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct brcms_c_rateset {int mcs; } ;


 scalar_t__ BRCMS_40_MHZ ;
 int clrbit (int ,int) ;
 int setbit (int ,int) ;

void brcms_c_rateset_bw_mcs_filter(struct brcms_c_rateset *rateset, u8 bw)
{
 if (bw == BRCMS_40_MHZ)
  setbit(rateset->mcs, 32);
 else
  clrbit(rateset->mcs, 32);
}
