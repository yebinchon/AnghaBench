
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;
 int IEEE80211_PPE_THRES_INFO_PPET_SIZE ;

__attribute__((used)) static u8 iwl_mvm_he_get_ppe_val(u8 *ppe, u8 ppe_pos_bit)
{
 u8 byte_num = ppe_pos_bit / 8;
 u8 bit_num = ppe_pos_bit % 8;
 u8 residue_bits;
 u8 res;

 if (bit_num <= 5)
  return (ppe[byte_num] >> bit_num) &
         (BIT(IEEE80211_PPE_THRES_INFO_PPET_SIZE) - 1);







 residue_bits = 8 - bit_num;

 res = (ppe[byte_num + 1] &
        (BIT(IEEE80211_PPE_THRES_INFO_PPET_SIZE - residue_bits) - 1)) <<
       residue_bits;
 res += (ppe[byte_num] >> bit_num) & (BIT(residue_bits) - 1);

 return res;
}
