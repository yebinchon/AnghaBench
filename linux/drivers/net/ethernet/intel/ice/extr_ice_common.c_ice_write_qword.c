
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct ice_ctx_ele {int offset; int lsb; int width; } ;
typedef int dest_qword ;
typedef int __le64 ;


 int BIT_ULL (int) ;
 int cpu_to_le64 (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
ice_write_qword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
{
 u64 src_qword, mask;
 __le64 dest_qword;
 u8 *from, *dest;
 u16 shift_width;


 from = src_ctx + ce_info->offset;


 shift_width = ce_info->lsb % 8;





 if (ce_info->width < 64)
  mask = BIT_ULL(ce_info->width) - 1;
 else
  mask = (u64)~0;




 src_qword = *(u64 *)from;
 src_qword &= mask;


 mask <<= shift_width;
 src_qword <<= shift_width;


 dest = dest_ctx + (ce_info->lsb / 8);

 memcpy(&dest_qword, dest, sizeof(dest_qword));

 dest_qword &= ~(cpu_to_le64(mask));
 dest_qword |= cpu_to_le64(src_qword);


 memcpy(dest, &dest_qword, sizeof(dest_qword));
}
