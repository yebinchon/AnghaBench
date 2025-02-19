
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_hw {int multi_list_size; scalar_t__ io; int * multi_bits; int * multi_list; } ;


 int HW_MULTICAST_SIZE ;
 scalar_t__ KS884X_MULTICAST_0_OFFSET ;
 int ether_crc (int,int ) ;
 int memset (int *,int ,int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void hw_set_grp_addr(struct ksz_hw *hw)
{
 int i;
 int index;
 int position;
 int value;

 memset(hw->multi_bits, 0, sizeof(u8) * HW_MULTICAST_SIZE);

 for (i = 0; i < hw->multi_list_size; i++) {
  position = (ether_crc(6, hw->multi_list[i]) >> 26) & 0x3f;
  index = position >> 3;
  value = 1 << (position & 7);
  hw->multi_bits[index] |= (u8) value;
 }

 for (i = 0; i < HW_MULTICAST_SIZE; i++)
  writeb(hw->multi_bits[i], hw->io + KS884X_MULTICAST_0_OFFSET +
   i);
}
