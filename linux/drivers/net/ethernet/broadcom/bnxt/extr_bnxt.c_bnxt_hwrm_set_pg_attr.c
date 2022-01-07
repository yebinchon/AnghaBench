
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnxt_ring_mem_info {int depth; int * dma_arr; int pg_tbl_map; } ;
typedef int __le64 ;


 int BNXT_PAGE_SHIFT ;
 int BNXT_PAGE_SIZE ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void bnxt_hwrm_set_pg_attr(struct bnxt_ring_mem_info *rmem, u8 *pg_attr,
      __le64 *pg_dir)
{
 u8 pg_size = 0;

 if (BNXT_PAGE_SHIFT == 13)
  pg_size = 1 << 4;
 else if (BNXT_PAGE_SIZE == 16)
  pg_size = 2 << 4;

 *pg_attr = pg_size;
 if (rmem->depth >= 1) {
  if (rmem->depth == 2)
   *pg_attr |= 2;
  else
   *pg_attr |= 1;
  *pg_dir = cpu_to_le64(rmem->pg_tbl_map);
 } else {
  *pg_dir = cpu_to_le64(rmem->dma_arr[0]);
 }
}
