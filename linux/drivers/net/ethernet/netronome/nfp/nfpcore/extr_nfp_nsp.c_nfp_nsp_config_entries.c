
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {void* entries; } ;



void *nfp_nsp_config_entries(struct nfp_nsp *state)
{
 return state->entries;
}
