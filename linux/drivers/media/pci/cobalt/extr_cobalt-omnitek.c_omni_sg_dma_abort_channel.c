
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt_stream {int dma_channel; struct cobalt* cobalt; } ;
struct cobalt {int dummy; } ;


 int ABORT ;
 int CS_REG (int ) ;
 int iowrite32 (int ,int ) ;
 int is_dma_done (struct cobalt_stream*) ;

void omni_sg_dma_abort_channel(struct cobalt_stream *s)
{
 struct cobalt *cobalt = s->cobalt;

 if (is_dma_done(s) == 0)
  iowrite32(ABORT, CS_REG(s->dma_channel));
}
