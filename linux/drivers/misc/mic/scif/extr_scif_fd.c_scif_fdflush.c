
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt {scalar_t__ files; int lock; } ;
struct file {struct scif_endpt* private_data; } ;
typedef scalar_t__ fl_owner_t ;


 int __scif_flush (struct scif_endpt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int scif_fdflush(struct file *f, fl_owner_t id)
{
 struct scif_endpt *ep = f->private_data;

 spin_lock(&ep->lock);
 if (ep->files == id)
  __scif_flush(ep);
 spin_unlock(&ep->lock);
 return 0;
}
