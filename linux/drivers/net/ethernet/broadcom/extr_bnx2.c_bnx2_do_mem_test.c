
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int test_pattern ;
struct bnx2 {int dummy; } ;


 int ENODEV ;
 int const bnx2_reg_rd_ind (struct bnx2*,int) ;
 int bnx2_reg_wr_ind (struct bnx2*,int,int const) ;

__attribute__((used)) static int
bnx2_do_mem_test(struct bnx2 *bp, u32 start, u32 size)
{
 static const u32 test_pattern[] = { 0x00000000, 0xffffffff, 0x55555555,
  0xaaaaaaaa , 0xaa55aa55, 0x55aa55aa };
 int i;

 for (i = 0; i < sizeof(test_pattern) / 4; i++) {
  u32 offset;

  for (offset = 0; offset < size; offset += 4) {

   bnx2_reg_wr_ind(bp, start + offset, test_pattern[i]);

   if (bnx2_reg_rd_ind(bp, start + offset) !=
    test_pattern[i]) {
    return -ENODEV;
   }
  }
 }
 return 0;
}
