
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 unsigned int FR_BZ_RX_INDIRECTION_TBL ;
 int FR_BZ_RX_INDIRECTION_TBL_ROWS ;
 int FR_BZ_RX_INDIRECTION_TBL_STEP ;

__attribute__((used)) static unsigned int falcon_b0_mem_map_size(struct ef4_nic *efx)
{



 return FR_BZ_RX_INDIRECTION_TBL +
  FR_BZ_RX_INDIRECTION_TBL_STEP * FR_BZ_RX_INDIRECTION_TBL_ROWS;
}
