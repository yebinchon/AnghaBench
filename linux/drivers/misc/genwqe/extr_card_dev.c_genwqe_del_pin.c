
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_file {int pin_lock; } ;
struct dma_mapping {int pin_list; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int genwqe_del_pin(struct genwqe_file *cfile, struct dma_mapping *m)
{
 unsigned long flags;

 spin_lock_irqsave(&cfile->pin_lock, flags);
 list_del(&m->pin_list);
 spin_unlock_irqrestore(&cfile->pin_lock, flags);

 return 0;
}
