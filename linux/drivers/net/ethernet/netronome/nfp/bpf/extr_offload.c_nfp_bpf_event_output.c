
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nfp_bpf_neutral_map {int ptr; } ;
struct nfp_app_bpf {int maps_neutral; } ;
struct TYPE_2__ {scalar_t__ ver; } ;
struct cmsg_bpf_event {int * data; int cpu_id; TYPE_1__ hdr; int map_ptr; int data_size; int pkt_size; } ;


 int EINVAL ;
 scalar_t__ NFP_CCM_ABI_VERSION ;
 scalar_t__ U32_MAX ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int bpf_event_output (int ,int,int *,int,int *,int,int ) ;
 int cmsg_warn (struct nfp_app_bpf*,char*,scalar_t__,scalar_t__) ;
 int nfp_bpf_maps_neutral_params ;
 int nfp_bpf_perf_event_copy ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct nfp_bpf_neutral_map* rhashtable_lookup_fast (int *,int*,int ) ;
 size_t round_up (int,int) ;

int nfp_bpf_event_output(struct nfp_app_bpf *bpf, const void *data,
    unsigned int len)
{
 struct cmsg_bpf_event *cbe = (void *)data;
 struct nfp_bpf_neutral_map *record;
 u32 pkt_size, data_size, map_id;
 u64 map_id_full;

 if (len < sizeof(struct cmsg_bpf_event))
  return -EINVAL;

 pkt_size = be32_to_cpu(cbe->pkt_size);
 data_size = be32_to_cpu(cbe->data_size);
 map_id_full = be64_to_cpu(cbe->map_ptr);
 map_id = map_id_full;

 if (len < sizeof(struct cmsg_bpf_event) + pkt_size + data_size)
  return -EINVAL;
 if (cbe->hdr.ver != NFP_CCM_ABI_VERSION)
  return -EINVAL;

 rcu_read_lock();
 record = rhashtable_lookup_fast(&bpf->maps_neutral, &map_id,
     nfp_bpf_maps_neutral_params);
 if (!record || map_id_full > U32_MAX) {
  rcu_read_unlock();
  cmsg_warn(bpf, "perf event: map id %lld (0x%llx) not recognized, dropping event\n",
     map_id_full, map_id_full);
  return -EINVAL;
 }

 bpf_event_output(record->ptr, be32_to_cpu(cbe->cpu_id),
    &cbe->data[round_up(pkt_size, 4)], data_size,
    cbe->data, pkt_size, nfp_bpf_perf_event_copy);
 rcu_read_unlock();

 return 0;
}
