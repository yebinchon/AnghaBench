
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int dummy; } ;
struct tap_queue {struct ptr_ring ring; } ;
struct file {struct tap_queue* private_data; int * f_op; } ;


 int EBADFD ;
 int EINVAL ;
 struct ptr_ring* ERR_PTR (int ) ;
 int tap_fops ;

struct ptr_ring *tap_get_ptr_ring(struct file *file)
{
 struct tap_queue *q;

 if (file->f_op != &tap_fops)
  return ERR_PTR(-EINVAL);
 q = file->private_data;
 if (!q)
  return ERR_PTR(-EBADFD);
 return &q->ring;
}
