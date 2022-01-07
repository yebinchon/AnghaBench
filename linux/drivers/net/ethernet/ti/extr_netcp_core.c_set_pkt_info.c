
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct knav_dma_desc {void* next_desc; void* buff; void* buff_len; } ;
typedef int dma_addr_t ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void set_pkt_info(dma_addr_t buff, u32 buff_len, u32 ndesc,
    struct knav_dma_desc *desc)
{
 desc->buff_len = cpu_to_le32(buff_len);
 desc->buff = cpu_to_le32(buff);
 desc->next_desc = cpu_to_le32(ndesc);
}
