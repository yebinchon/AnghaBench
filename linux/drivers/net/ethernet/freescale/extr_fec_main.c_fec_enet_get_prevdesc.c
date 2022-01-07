
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdesc_prop {void* dsize; struct bufdesc* last; struct bufdesc* base; } ;
struct bufdesc {int dummy; } ;



__attribute__((used)) static struct bufdesc *fec_enet_get_prevdesc(struct bufdesc *bdp,
          struct bufdesc_prop *bd)
{
 return (bdp <= bd->base) ? bd->last
   : (struct bufdesc *)(((void *)bdp) - bd->dsize);
}
