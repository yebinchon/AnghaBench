
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ag71xx_ring {int desc_split; int curr; int order; } ;
struct ag71xx_desc {unsigned int data; unsigned int ctrl; } ;


 int BIT (int ) ;
 unsigned int DESC_EMPTY ;
 unsigned int DESC_MORE ;
 int ag71xx_desc_empty (struct ag71xx_desc*) ;
 struct ag71xx_desc* ag71xx_ring_desc (struct ag71xx_ring*,int) ;

__attribute__((used)) static int ag71xx_fill_dma_desc(struct ag71xx_ring *ring, u32 addr, int len)
{
 int i, ring_mask, ndesc, split;
 struct ag71xx_desc *desc;

 ring_mask = BIT(ring->order) - 1;
 ndesc = 0;
 split = ring->desc_split;

 if (!split)
  split = len;

 while (len > 0) {
  unsigned int cur_len = len;

  i = (ring->curr + ndesc) & ring_mask;
  desc = ag71xx_ring_desc(ring, i);

  if (!ag71xx_desc_empty(desc))
   return -1;

  if (cur_len > split) {
   cur_len = split;




   if (len <= split + 4)
    cur_len -= 4;
  }

  desc->data = addr;
  addr += cur_len;
  len -= cur_len;

  if (len > 0)
   cur_len |= DESC_MORE;


  if (!ndesc)
   cur_len |= DESC_EMPTY;

  desc->ctrl = cur_len;
  ndesc++;
 }

 return ndesc;
}
