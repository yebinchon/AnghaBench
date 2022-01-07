
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt {int dummy; } ;
struct file {struct scif_endpt* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int __scif_pollfd (struct file*,int *,struct scif_endpt*) ;

__attribute__((used)) static __poll_t scif_fdpoll(struct file *f, poll_table *wait)
{
 struct scif_endpt *priv = f->private_data;

 return __scif_pollfd(f, wait, priv);
}
