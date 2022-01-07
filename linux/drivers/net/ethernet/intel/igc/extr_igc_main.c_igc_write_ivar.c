
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;


 int IGC_IVAR0 ;
 int IGC_IVAR_VALID ;
 int array_rd32 (int ,int) ;
 int array_wr32 (int ,int,int) ;

__attribute__((used)) static void igc_write_ivar(struct igc_hw *hw, int msix_vector,
      int index, int offset)
{
 u32 ivar = array_rd32(IGC_IVAR0, index);


 ivar &= ~((u32)0xFF << offset);


 ivar |= (msix_vector | IGC_IVAR_VALID) << offset;

 array_wr32(IGC_IVAR0, index, ivar);
}
