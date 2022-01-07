
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_pciefd {int dummy; } ;


 int KVASER_PCIEFD_DMA_SIZE ;
 int kvaser_pciefd_read_packet (struct kvaser_pciefd*,int*,int) ;

__attribute__((used)) static int kvaser_pciefd_read_buffer(struct kvaser_pciefd *pcie, int dma_buf)
{
 int pos = 0;
 int res = 0;

 do {
  res = kvaser_pciefd_read_packet(pcie, &pos, dma_buf);
 } while (!res && pos > 0 && pos < KVASER_PCIEFD_DMA_SIZE);

 return res;
}
