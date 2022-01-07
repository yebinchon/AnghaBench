
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdesc_prop {int dsize_log2; scalar_t__ base; } ;
struct bufdesc {int dummy; } ;



__attribute__((used)) static int fec_enet_get_bd_index(struct bufdesc *bdp,
     struct bufdesc_prop *bd)
{
 return ((const char *)bdp - (const char *)bd->base) >> bd->dsize_log2;
}
