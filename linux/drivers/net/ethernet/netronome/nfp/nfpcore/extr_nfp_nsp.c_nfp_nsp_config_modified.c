
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int modified; } ;



bool nfp_nsp_config_modified(struct nfp_nsp *state)
{
 return state->modified;
}
