
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_file {int opener; int list; } ;
struct genwqe_dev {int file_lock; } ;


 int list_del (int *) ;
 int put_pid (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int genwqe_del_file(struct genwqe_dev *cd, struct genwqe_file *cfile)
{
 unsigned long flags;

 spin_lock_irqsave(&cd->file_lock, flags);
 list_del(&cfile->list);
 spin_unlock_irqrestore(&cd->file_lock, flags);
 put_pid(cfile->opener);

 return 0;
}
