
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sg_dma_desc_info {scalar_t__ bus; } ;
struct cobalt_stream {int dma_channel; struct cobalt* cobalt; } ;
struct cobalt {int dummy; } ;


 scalar_t__ CS_REG (int ) ;
 scalar_t__ DESCRIPTOR (int ) ;
 int ENABLE ;
 int NEXT_ADRS_MSK ;
 int SCATTER_GATHER_MODE ;
 int START ;
 int iowrite32 (int,scalar_t__) ;

void omni_sg_dma_start(struct cobalt_stream *s, struct sg_dma_desc_info *desc)
{
 struct cobalt *cobalt = s->cobalt;

 iowrite32((u32)((u64)desc->bus >> 32), DESCRIPTOR(s->dma_channel) + 4);
 iowrite32((u32)desc->bus & NEXT_ADRS_MSK, DESCRIPTOR(s->dma_channel));
 iowrite32(ENABLE | SCATTER_GATHER_MODE | START, CS_REG(s->dma_channel));
}
