
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r6040_descriptor {struct r6040_descriptor* vndescp; void* ndesc; } ;
typedef int dma_addr_t ;


 void* cpu_to_le32 (int) ;

__attribute__((used)) static void r6040_init_ring_desc(struct r6040_descriptor *desc_ring,
     dma_addr_t desc_dma, int size)
{
 struct r6040_descriptor *desc = desc_ring;
 dma_addr_t mapping = desc_dma;

 while (size-- > 0) {
  mapping += sizeof(*desc);
  desc->ndesc = cpu_to_le32(mapping);
  desc->vndescp = desc + 1;
  desc++;
 }
 desc--;
 desc->ndesc = cpu_to_le32(desc_dma);
 desc->vndescp = desc_ring;
}
