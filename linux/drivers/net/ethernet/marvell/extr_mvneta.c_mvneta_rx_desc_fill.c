
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_queue {void** buf_virt_addr; struct mvneta_rx_desc* descs; } ;
struct mvneta_rx_desc {int buf_phys_addr; } ;



__attribute__((used)) static void mvneta_rx_desc_fill(struct mvneta_rx_desc *rx_desc,
    u32 phys_addr, void *virt_addr,
    struct mvneta_rx_queue *rxq)
{
 int i;

 rx_desc->buf_phys_addr = phys_addr;
 i = rx_desc - rxq->descs;
 rxq->buf_virt_addr[i] = virt_addr;
}
