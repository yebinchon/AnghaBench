
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct tap_queue {struct socket sock; } ;
struct file {struct tap_queue* private_data; int * f_op; } ;


 int EBADFD ;
 int EINVAL ;
 struct socket* ERR_PTR (int ) ;
 int tap_fops ;

struct socket *tap_get_socket(struct file *file)
{
 struct tap_queue *q;
 if (file->f_op != &tap_fops)
  return ERR_PTR(-EINVAL);
 q = file->private_data;
 if (!q)
  return ERR_PTR(-EBADFD);
 return &q->sock;
}
