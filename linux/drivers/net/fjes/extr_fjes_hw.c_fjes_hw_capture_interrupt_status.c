
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fjes_hw {int dummy; } ;


 int XSCT_IS ;
 int rd32 (int ) ;

u32 fjes_hw_capture_interrupt_status(struct fjes_hw *hw)
{
 u32 cur_is;

 cur_is = rd32(XSCT_IS);

 return cur_is;
}
