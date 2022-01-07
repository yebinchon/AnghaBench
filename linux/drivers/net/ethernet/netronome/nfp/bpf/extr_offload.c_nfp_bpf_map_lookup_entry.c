
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_offloaded_map {int dev_priv; } ;


 int nfp_bpf_ctrl_lookup_entry (struct bpf_offloaded_map*,void*,void*) ;
 int nfp_map_bpf_byte_swap (int ,void*) ;

__attribute__((used)) static int
nfp_bpf_map_lookup_entry(struct bpf_offloaded_map *offmap,
    void *key, void *value)
{
 int err;

 err = nfp_bpf_ctrl_lookup_entry(offmap, key, value);
 if (err)
  return err;

 nfp_map_bpf_byte_swap(offmap->dev_priv, value);
 return 0;
}
