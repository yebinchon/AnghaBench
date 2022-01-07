
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ice_ctx_ele {int offset; int lsb; int width; } ;
typedef int dest_dword ;
typedef int __le32 ;


 int BIT (int) ;
 int cpu_to_le32 (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
ice_write_dword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
{
 u32 src_dword, mask;
 __le32 dest_dword;
 u8 *from, *dest;
 u16 shift_width;


 from = src_ctx + ce_info->offset;


 shift_width = ce_info->lsb % 8;





 if (ce_info->width < 32)
  mask = BIT(ce_info->width) - 1;
 else
  mask = (u32)~0;




 src_dword = *(u32 *)from;
 src_dword &= mask;


 mask <<= shift_width;
 src_dword <<= shift_width;


 dest = dest_ctx + (ce_info->lsb / 8);

 memcpy(&dest_dword, dest, sizeof(dest_dword));

 dest_dword &= ~(cpu_to_le32(mask));
 dest_dword |= cpu_to_le32(src_dword);


 memcpy(dest, &dest_dword, sizeof(dest_dword));
}
