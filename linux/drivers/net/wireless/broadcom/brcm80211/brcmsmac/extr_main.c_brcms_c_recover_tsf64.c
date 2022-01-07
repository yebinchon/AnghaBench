
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct d11rxhdr {int RxTSFTime; } ;
struct brcms_c_info {int hw; } ;


 int brcms_b_read_tsf (int ,int*,int*) ;

__attribute__((used)) static u64 brcms_c_recover_tsf64(struct brcms_c_info *wlc,
     struct d11rxhdr *rxh)
{
 u32 tsf_h, tsf_l;
 u16 rx_tsf_0_15, rx_tsf_16_31;

 brcms_b_read_tsf(wlc->hw, &tsf_l, &tsf_h);

 rx_tsf_16_31 = (u16)(tsf_l >> 16);
 rx_tsf_0_15 = rxh->RxTSFTime;





 if ((u16)tsf_l < rx_tsf_0_15) {
  rx_tsf_16_31 -= 1;
  if (rx_tsf_16_31 == 0xffff)
   tsf_h -= 1;
 }

 return ((u64)tsf_h << 32) | (((u32)rx_tsf_16_31 << 16) + rx_tsf_0_15);
}
