
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_offloaded_map {int dummy; } ;


 int NFP_CCM_TYPE_BPF_MAP_GETNEXT ;
 int nfp_bpf_ctrl_entry_op (struct bpf_offloaded_map*,int ,void*,int *,int ,void*,int *) ;

int nfp_bpf_ctrl_getnext_entry(struct bpf_offloaded_map *offmap,
          void *key, void *next_key)
{
 return nfp_bpf_ctrl_entry_op(offmap, NFP_CCM_TYPE_BPF_MAP_GETNEXT,
         key, ((void*)0), 0, next_key, ((void*)0));
}
