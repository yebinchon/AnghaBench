
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int modified; } ;



void nfp_nsp_config_set_modified(struct nfp_nsp *state, bool modified)
{
 state->modified = modified;
}
