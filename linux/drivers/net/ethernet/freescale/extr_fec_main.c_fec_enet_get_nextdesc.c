
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdesc_prop {int dsize; struct bufdesc* base; struct bufdesc* last; } ;
struct bufdesc {int dummy; } ;



__attribute__((used)) static struct bufdesc *fec_enet_get_nextdesc(struct bufdesc *bdp,
          struct bufdesc_prop *bd)
{
 return (bdp >= bd->last) ? bd->base
   : (struct bufdesc *)(((void *)bdp) + bd->dsize);
}
