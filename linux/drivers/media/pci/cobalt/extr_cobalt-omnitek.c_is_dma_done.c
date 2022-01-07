
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt_stream {int dma_channel; struct cobalt* cobalt; } ;
struct cobalt {int dummy; } ;


 int CS_REG (int ) ;
 int DONE ;
 int ioread32 (int ) ;

bool is_dma_done(struct cobalt_stream *s)
{
 struct cobalt *cobalt = s->cobalt;

 if (ioread32(CS_REG(s->dma_channel)) & DONE)
  return 1;

 return 0;
}
