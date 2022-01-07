
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wmi_host_mem_chunks {struct host_memory_chunk* items; void* count; } ;
struct host_memory_chunk {void* req_id; void* size; void* ptr; } ;
struct TYPE_4__ {int num_mem_chunks; TYPE_1__* mem_chunks; } ;
struct ath10k {TYPE_2__ wmi; } ;
struct TYPE_3__ {int paddr; int len; int req_id; } ;


 int ATH10K_DBG_WMI ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,unsigned long long) ;

void ath10k_wmi_put_host_mem_chunks(struct ath10k *ar,
        struct wmi_host_mem_chunks *chunks)
{
 struct host_memory_chunk *chunk;
 int i;

 chunks->count = __cpu_to_le32(ar->wmi.num_mem_chunks);

 for (i = 0; i < ar->wmi.num_mem_chunks; i++) {
  chunk = &chunks->items[i];
  chunk->ptr = __cpu_to_le32(ar->wmi.mem_chunks[i].paddr);
  chunk->size = __cpu_to_le32(ar->wmi.mem_chunks[i].len);
  chunk->req_id = __cpu_to_le32(ar->wmi.mem_chunks[i].req_id);

  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "wmi chunk %d len %d requested, addr 0x%llx\n",
      i,
      ar->wmi.mem_chunks[i].len,
      (unsigned long long)ar->wmi.mem_chunks[i].paddr);
 }
}
