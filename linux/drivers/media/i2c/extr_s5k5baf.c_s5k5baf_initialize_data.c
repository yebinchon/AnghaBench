
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int req_fiv; int fiv; scalar_t__ valid_auto_alg; scalar_t__ pixfmt; } ;



__attribute__((used)) static void s5k5baf_initialize_data(struct s5k5baf *state)
{
 state->pixfmt = 0;
 state->req_fiv = 10000 / 15;
 state->fiv = state->req_fiv;
 state->valid_auto_alg = 0;
}
