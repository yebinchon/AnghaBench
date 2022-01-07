
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct knav_dma_desc {void* orig_len; void* orig_buff; } ;
typedef int dma_addr_t ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void set_org_pkt_info(dma_addr_t buff, u32 buff_len,
        struct knav_dma_desc *desc)
{
 desc->orig_buff = cpu_to_le32(buff);
 desc->orig_len = cpu_to_le32(buff_len);
}
