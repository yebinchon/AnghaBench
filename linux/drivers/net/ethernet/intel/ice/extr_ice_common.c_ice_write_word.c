
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_ctx_ele {int offset; int lsb; int width; } ;
typedef int dest_word ;
typedef int __le16 ;


 int BIT (int ) ;
 int cpu_to_le16 (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
ice_write_word(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
{
 u16 src_word, mask;
 __le16 dest_word;
 u8 *from, *dest;
 u16 shift_width;


 from = src_ctx + ce_info->offset;


 shift_width = ce_info->lsb % 8;
 mask = BIT(ce_info->width) - 1;




 src_word = *(u16 *)from;
 src_word &= mask;


 mask <<= shift_width;
 src_word <<= shift_width;


 dest = dest_ctx + (ce_info->lsb / 8);

 memcpy(&dest_word, dest, sizeof(dest_word));

 dest_word &= ~(cpu_to_le16(mask));
 dest_word |= cpu_to_le16(src_word);


 memcpy(dest, &dest_word, sizeof(dest_word));
}
