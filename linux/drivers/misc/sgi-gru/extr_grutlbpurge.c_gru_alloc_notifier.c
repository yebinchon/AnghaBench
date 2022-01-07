
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct gru_mm_struct {struct mmu_notifier ms_notifier; int ms_wait_queue; int ms_asid_lock; } ;


 int ENOMEM ;
 struct mmu_notifier* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int STAT (int ) ;
 int gms_alloc ;
 int init_waitqueue_head (int *) ;
 struct gru_mm_struct* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mmu_notifier *gru_alloc_notifier(struct mm_struct *mm)
{
 struct gru_mm_struct *gms;

 gms = kzalloc(sizeof(*gms), GFP_KERNEL);
 if (!gms)
  return ERR_PTR(-ENOMEM);
 STAT(gms_alloc);
 spin_lock_init(&gms->ms_asid_lock);
 init_waitqueue_head(&gms->ms_wait_queue);

 return &gms->ms_notifier;
}
