
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct brcms_c_info {int hw; } ;


 size_t BRCMS_RATE_MASK ;
 scalar_t__ M_RT_BBRSMAP_A ;
 scalar_t__ M_RT_BBRSMAP_B ;
 scalar_t__ M_RT_DIRMAP_A ;
 scalar_t__ M_RT_DIRMAP_B ;
 scalar_t__ brcms_b_read_shm (int ,scalar_t__) ;
 int brcms_b_write_shm (int ,scalar_t__,scalar_t__) ;
 scalar_t__ is_ofdm_rate (size_t) ;
 size_t* rate_info ;

__attribute__((used)) static void brcms_c_write_rate_shm(struct brcms_c_info *wlc, u8 rate,
       u8 basic_rate)
{
 u8 phy_rate, index;
 u8 basic_phy_rate, basic_index;
 u16 dir_table, basic_table;
 u16 basic_ptr;


 dir_table = is_ofdm_rate(basic_rate) ? M_RT_DIRMAP_A : M_RT_DIRMAP_B;


 basic_table = is_ofdm_rate(rate) ? M_RT_BBRSMAP_A : M_RT_BBRSMAP_B;





 phy_rate = rate_info[rate] & BRCMS_RATE_MASK;
 basic_phy_rate = rate_info[basic_rate] & BRCMS_RATE_MASK;
 index = phy_rate & 0xf;
 basic_index = basic_phy_rate & 0xf;




 basic_ptr = brcms_b_read_shm(wlc->hw, (dir_table + basic_index * 2));




 brcms_b_write_shm(wlc->hw, (basic_table + index * 2), basic_ptr);
}
