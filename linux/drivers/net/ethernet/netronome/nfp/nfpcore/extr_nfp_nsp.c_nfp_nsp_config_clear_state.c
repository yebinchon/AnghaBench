
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {scalar_t__ idx; int * entries; } ;



void nfp_nsp_config_clear_state(struct nfp_nsp *state)
{
 state->entries = ((void*)0);
 state->idx = 0;
}
