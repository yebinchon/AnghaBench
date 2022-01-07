
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_ctx_ele {int offset; int lsb; int width; } ;
typedef int dest_byte ;


 int BIT (int ) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void
ice_write_byte(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
{
 u8 src_byte, dest_byte, mask;
 u8 *from, *dest;
 u16 shift_width;


 from = src_ctx + ce_info->offset;


 shift_width = ce_info->lsb % 8;
 mask = (u8)(BIT(ce_info->width) - 1);

 src_byte = *from;
 src_byte &= mask;


 mask <<= shift_width;
 src_byte <<= shift_width;


 dest = dest_ctx + (ce_info->lsb / 8);

 memcpy(&dest_byte, dest, sizeof(dest_byte));

 dest_byte &= ~mask;
 dest_byte |= src_byte;


 memcpy(dest, &dest_byte, sizeof(dest_byte));
}
