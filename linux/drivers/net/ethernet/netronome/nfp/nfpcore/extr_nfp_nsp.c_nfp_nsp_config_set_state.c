
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {unsigned int idx; void* entries; } ;



void
nfp_nsp_config_set_state(struct nfp_nsp *state, void *entries, unsigned int idx)
{
 state->entries = entries;
 state->idx = idx;
}
