
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_deflate_state {int strm; scalar_t__ seqno; } ;


 int zlib_deflateReset (int *) ;

__attribute__((used)) static void z_comp_reset(void *arg)
{
 struct ppp_deflate_state *state = (struct ppp_deflate_state *) arg;

 state->seqno = 0;
 zlib_deflateReset(&state->strm);
}
