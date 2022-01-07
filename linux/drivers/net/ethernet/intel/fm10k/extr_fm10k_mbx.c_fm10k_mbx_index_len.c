
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fm10k_mbx_info {int mbmem_len; } ;



__attribute__((used)) static u16 fm10k_mbx_index_len(struct fm10k_mbx_info *mbx, u16 head, u16 tail)
{
 u16 len = tail - head;


 if (len > tail)
  len -= 2;

 return len & ((mbx->mbmem_len << 1) - 1);
}
