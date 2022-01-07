
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct i40e_context_ele {int offset; int lsb; int width; } ;
typedef int dest_qword ;
typedef int __le64 ;


 int BIT_ULL (int) ;
 int cpu_to_le64 (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void i40e_write_qword(u8 *hmc_bits,
        struct i40e_context_ele *ce_info,
        u8 *src)
{
 u64 src_qword, mask;
 u8 *from, *dest;
 u16 shift_width;
 __le64 dest_qword;


 from = src + ce_info->offset;


 shift_width = ce_info->lsb % 8;





 if (ce_info->width < 64)
  mask = BIT_ULL(ce_info->width) - 1;
 else
  mask = ~(u64)0;




 src_qword = *(u64 *)from;
 src_qword &= mask;


 mask <<= shift_width;
 src_qword <<= shift_width;


 dest = hmc_bits + (ce_info->lsb / 8);

 memcpy(&dest_qword, dest, sizeof(dest_qword));

 dest_qword &= ~(cpu_to_le64(mask));
 dest_qword |= cpu_to_le64(src_qword);


 memcpy(dest, &dest_qword, sizeof(dest_qword));
}
