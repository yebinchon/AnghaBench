
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct knav_dma_desc {int next_desc; int buff; int buff_len; } ;
typedef void* dma_addr_t ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static void get_pkt_info(dma_addr_t *buff, u32 *buff_len, dma_addr_t *ndesc,
    struct knav_dma_desc *desc)
{
 *buff_len = le32_to_cpu(desc->buff_len);
 *buff = le32_to_cpu(desc->buff);
 *ndesc = le32_to_cpu(desc->next_desc);
}
