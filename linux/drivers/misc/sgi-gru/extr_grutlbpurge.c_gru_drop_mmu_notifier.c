
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_mm_struct {int ms_notifier; } ;


 int mmu_notifier_put (int *) ;

void gru_drop_mmu_notifier(struct gru_mm_struct *gms)
{
 mmu_notifier_put(&gms->ms_notifier);
}
