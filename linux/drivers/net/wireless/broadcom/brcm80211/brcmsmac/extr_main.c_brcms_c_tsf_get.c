
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct brcms_c_info {int hw; } ;


 int brcms_b_read_tsf (int ,int*,int*) ;

u64 brcms_c_tsf_get(struct brcms_c_info *wlc)
{
 u32 tsf_h, tsf_l;
 u64 tsf;

 brcms_b_read_tsf(wlc->hw, &tsf_l, &tsf_h);

 tsf = tsf_h;
 tsf <<= 32;
 tsf |= tsf_l;

 return tsf;
}
