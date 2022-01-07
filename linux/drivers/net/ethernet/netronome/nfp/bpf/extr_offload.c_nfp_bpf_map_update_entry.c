
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bpf_offloaded_map {int dev_priv; } ;


 int nfp_bpf_ctrl_update_entry (struct bpf_offloaded_map*,void*,void*,int ) ;
 int nfp_map_bpf_byte_swap (int ,void*) ;
 int nfp_map_bpf_byte_swap_record (int ,void*) ;

__attribute__((used)) static int
nfp_bpf_map_update_entry(struct bpf_offloaded_map *offmap,
    void *key, void *value, u64 flags)
{
 nfp_map_bpf_byte_swap(offmap->dev_priv, value);
 nfp_map_bpf_byte_swap_record(offmap->dev_priv, value);
 return nfp_bpf_ctrl_update_entry(offmap, key, value, flags);
}
