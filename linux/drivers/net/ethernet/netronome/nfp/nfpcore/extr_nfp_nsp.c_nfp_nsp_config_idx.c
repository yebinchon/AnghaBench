
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {unsigned int idx; } ;



unsigned int nfp_nsp_config_idx(struct nfp_nsp *state)
{
 return state->idx;
}
