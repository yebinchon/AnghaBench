
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct bfa_cee_stats {int dummy; } ;
struct bfa_cee_attr {int dummy; } ;
struct TYPE_4__ {int pa; int * kva; } ;
struct TYPE_3__ {int pa; int * kva; } ;
struct bfa_cee {struct bfa_cee_stats* stats; struct bfa_cee_attr* attr; TYPE_2__ stats_dma; TYPE_1__ attr_dma; } ;


 int bfa_cee_attr_meminfo () ;

void
bfa_nw_cee_mem_claim(struct bfa_cee *cee, u8 *dma_kva, u64 dma_pa)
{
 cee->attr_dma.kva = dma_kva;
 cee->attr_dma.pa = dma_pa;
 cee->stats_dma.kva = dma_kva + bfa_cee_attr_meminfo();
 cee->stats_dma.pa = dma_pa + bfa_cee_attr_meminfo();
 cee->attr = (struct bfa_cee_attr *) dma_kva;
 cee->stats = (struct bfa_cee_stats *)
  (dma_kva + bfa_cee_attr_meminfo());
}
