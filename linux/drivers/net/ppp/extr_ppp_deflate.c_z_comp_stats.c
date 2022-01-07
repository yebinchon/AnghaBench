
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compstat {int dummy; } ;
struct ppp_deflate_state {struct compstat stats; } ;



__attribute__((used)) static void z_comp_stats(void *arg, struct compstat *stats)
{
 struct ppp_deflate_state *state = (struct ppp_deflate_state *) arg;

 *stats = state->stats;
}
