
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gve_rx_slot_page_info {int page_offset; } ;
struct gve_rx_data_slot {int qpl_offset; } ;


 int PAGE_SIZE ;
 int be64_to_cpu (int ) ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static void gve_rx_flip_buff(struct gve_rx_slot_page_info *page_info,
        struct gve_rx_data_slot *data_ring)
{
 u64 addr = be64_to_cpu(data_ring->qpl_offset);

 page_info->page_offset ^= PAGE_SIZE / 2;
 addr ^= PAGE_SIZE / 2;
 data_ring->qpl_offset = cpu_to_be64(addr);
}
