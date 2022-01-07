
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bpf_offloaded_map {int dummy; } ;


 int NFP_CCM_TYPE_BPF_MAP_UPDATE ;
 int nfp_bpf_ctrl_entry_op (struct bpf_offloaded_map*,int ,void*,void*,int ,int *,int *) ;

int nfp_bpf_ctrl_update_entry(struct bpf_offloaded_map *offmap,
         void *key, void *value, u64 flags)
{
 return nfp_bpf_ctrl_entry_op(offmap, NFP_CCM_TYPE_BPF_MAP_UPDATE,
         key, value, flags, ((void*)0), ((void*)0));
}
