
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; } ;


 int RDES3_PACKET_SIZE_MASK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dwmac4_wrback_get_rx_frame_len(struct dma_desc *p, int rx_coe)
{
 return (le32_to_cpu(p->des3) & RDES3_PACKET_SIZE_MASK);
}
