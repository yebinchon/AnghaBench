
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct knav_dma_desc {void* packet_info; void* desc_info; } ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void set_desc_info(u32 desc_info, u32 pkt_info,
     struct knav_dma_desc *desc)
{
 desc->desc_info = cpu_to_le32(desc_info);
 desc->packet_info = cpu_to_le32(pkt_info);
}
