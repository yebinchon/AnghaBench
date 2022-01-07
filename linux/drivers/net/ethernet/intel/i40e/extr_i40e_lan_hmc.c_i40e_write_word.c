
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_context_ele {int offset; int lsb; int width; } ;
typedef int dest_word ;
typedef int __le16 ;


 int BIT (int ) ;
 int cpu_to_le16 (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void i40e_write_word(u8 *hmc_bits,
       struct i40e_context_ele *ce_info,
       u8 *src)
{
 u16 src_word, mask;
 u8 *from, *dest;
 u16 shift_width;
 __le16 dest_word;


 from = src + ce_info->offset;


 shift_width = ce_info->lsb % 8;
 mask = BIT(ce_info->width) - 1;




 src_word = *(u16 *)from;
 src_word &= mask;


 mask <<= shift_width;
 src_word <<= shift_width;


 dest = hmc_bits + (ce_info->lsb / 8);

 memcpy(&dest_word, dest, sizeof(dest_word));

 dest_word &= ~(cpu_to_le16(mask));
 dest_word |= cpu_to_le16(src_word);


 memcpy(dest, &dest_word, sizeof(dest_word));
}
