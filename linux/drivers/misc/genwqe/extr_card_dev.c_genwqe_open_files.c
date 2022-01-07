
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int file_lock; int file_list; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int genwqe_open_files(struct genwqe_dev *cd)
{
 int rc;
 unsigned long flags;

 spin_lock_irqsave(&cd->file_lock, flags);
 rc = list_empty(&cd->file_list);
 spin_unlock_irqrestore(&cd->file_lock, flags);
 return !rc;
}
