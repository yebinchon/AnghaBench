
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_file {int map_lock; int map_list; } ;
struct dma_mapping {int card_list; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __genwqe_add_mapping(struct genwqe_file *cfile,
         struct dma_mapping *dma_map)
{
 unsigned long flags;

 spin_lock_irqsave(&cfile->map_lock, flags);
 list_add(&dma_map->card_list, &cfile->map_list);
 spin_unlock_irqrestore(&cfile->map_lock, flags);
}
