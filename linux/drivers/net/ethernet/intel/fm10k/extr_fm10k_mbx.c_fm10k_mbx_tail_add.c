
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fm10k_mbx_info {int tail; int mbmem_len; } ;



__attribute__((used)) static u16 fm10k_mbx_tail_add(struct fm10k_mbx_info *mbx, u16 offset)
{
 u16 tail = (mbx->tail + offset + 1) & ((mbx->mbmem_len << 1) - 1);


 return (tail > mbx->tail) ? --tail : ++tail;
}
