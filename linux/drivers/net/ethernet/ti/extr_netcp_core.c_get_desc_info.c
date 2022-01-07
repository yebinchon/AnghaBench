
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct knav_dma_desc {int packet_info; int desc_info; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static void get_desc_info(u32 *desc_info, u32 *pkt_info,
     struct knav_dma_desc *desc)
{
 *desc_info = le32_to_cpu(desc->desc_info);
 *pkt_info = le32_to_cpu(desc->packet_info);
}
