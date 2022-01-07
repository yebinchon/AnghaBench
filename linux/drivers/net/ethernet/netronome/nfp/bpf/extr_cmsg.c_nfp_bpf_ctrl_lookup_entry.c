
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_offloaded_map {int dummy; } ;


 int NFP_CCM_TYPE_BPF_MAP_LOOKUP ;
 int nfp_bpf_ctrl_entry_op (struct bpf_offloaded_map*,int ,void*,int *,int ,int *,void*) ;

int nfp_bpf_ctrl_lookup_entry(struct bpf_offloaded_map *offmap,
         void *key, void *value)
{
 return nfp_bpf_ctrl_entry_op(offmap, NFP_CCM_TYPE_BPF_MAP_LOOKUP,
         key, ((void*)0), 0, ((void*)0), value);
}
