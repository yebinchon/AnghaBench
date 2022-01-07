
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_mem_chunks; TYPE_2__* mem_chunks; } ;
struct ath10k {TYPE_1__ wmi; int dev; } ;
struct TYPE_4__ {int paddr; int vaddr; int len; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

void ath10k_wmi_free_host_mem(struct ath10k *ar)
{
 int i;


 for (i = 0; i < ar->wmi.num_mem_chunks; i++) {
  dma_free_coherent(ar->dev,
      ar->wmi.mem_chunks[i].len,
      ar->wmi.mem_chunks[i].vaddr,
      ar->wmi.mem_chunks[i].paddr);
 }

 ar->wmi.num_mem_chunks = 0;
}
