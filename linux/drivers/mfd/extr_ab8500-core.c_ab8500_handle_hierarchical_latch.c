
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab8500 {int dummy; } ;


 int AB8500_INTERRUPT ;
 scalar_t__ AB8500_IT_LATCH1_REG ;
 int __ffs (int) ;
 int ab8500_handle_hierarchical_line (struct ab8500*,int,int) ;
 int get_register_interruptible (struct ab8500*,int ,scalar_t__,int*) ;
 int update_latch_offset (int*,int) ;

__attribute__((used)) static int ab8500_handle_hierarchical_latch(struct ab8500 *ab8500,
     int hier_offset, u8 hier_val)
{
 int latch_bit, status;
 u8 latch_offset, latch_val;

 do {
  latch_bit = __ffs(hier_val);
  latch_offset = (hier_offset << 3) + latch_bit;

  update_latch_offset(&latch_offset, hier_offset);

  status = get_register_interruptible(ab8500,
    AB8500_INTERRUPT,
    AB8500_IT_LATCH1_REG + latch_offset,
    &latch_val);
  if (status < 0 || latch_val == 0)
   goto discard;

  status = ab8500_handle_hierarchical_line(ab8500,
    latch_offset, latch_val);
  if (status < 0)
   return status;
discard:
  hier_val &= ~(1 << latch_bit);
 } while (hier_val);

 return 0;
}
