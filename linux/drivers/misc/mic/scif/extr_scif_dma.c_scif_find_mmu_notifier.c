
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_mmu_notif {int dummy; } ;
struct scif_endpt_rma_info {int dummy; } ;
struct mm_struct {int dummy; } ;



__attribute__((used)) static struct scif_mmu_notif *
scif_find_mmu_notifier(struct mm_struct *mm,
         struct scif_endpt_rma_info *rma)
{
 return ((void*)0);
}
