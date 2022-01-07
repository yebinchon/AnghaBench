
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_file {int list; int opener; } ;
struct genwqe_dev {int file_lock; int file_list; } ;


 int current ;
 int get_pid (int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_tgid (int ) ;

__attribute__((used)) static void genwqe_add_file(struct genwqe_dev *cd, struct genwqe_file *cfile)
{
 unsigned long flags;

 cfile->opener = get_pid(task_tgid(current));
 spin_lock_irqsave(&cd->file_lock, flags);
 list_add(&cfile->list, &cd->file_list);
 spin_unlock_irqrestore(&cd->file_lock, flags);
}
