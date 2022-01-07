
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct ks_net {size_t* mcast_bits; size_t mcast_lst_size; int * mcast_lst; } ;


 int HW_MCAST_SIZE ;
 size_t KS_MAHTR0 ;
 int ether_gen_crc (int,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;
 int memset (size_t*,int ,int) ;

__attribute__((used)) static void ks_set_grpaddr(struct ks_net *ks)
{
 u8 i;
 u32 index, position, value;

 memset(ks->mcast_bits, 0, sizeof(u8) * HW_MCAST_SIZE);

 for (i = 0; i < ks->mcast_lst_size; i++) {
  position = (ether_gen_crc(6, ks->mcast_lst[i]) >> 26) & 0x3f;
  index = position >> 3;
  value = 1 << (position & 7);
  ks->mcast_bits[index] |= (u8)value;
 }

 for (i = 0; i < HW_MCAST_SIZE; i++) {
  if (i & 1) {
   ks_wrreg16(ks, (u16)((KS_MAHTR0 + i) & ~1),
    (ks->mcast_bits[i] << 8) |
    ks->mcast_bits[i - 1]);
  }
 }
}
