
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct knav_dma_desc {int orig_len; int orig_buff; } ;
typedef void* dma_addr_t ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static void get_org_pkt_info(dma_addr_t *buff, u32 *buff_len,
        struct knav_dma_desc *desc)
{
 *buff = le32_to_cpu(desc->orig_buff);
 *buff_len = le32_to_cpu(desc->orig_len);
}
