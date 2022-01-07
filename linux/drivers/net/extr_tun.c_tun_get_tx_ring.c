
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int dummy; } ;
struct tun_file {struct ptr_ring tx_ring; } ;
struct file {struct tun_file* private_data; int * f_op; } ;


 int EBADFD ;
 int EINVAL ;
 struct ptr_ring* ERR_PTR (int ) ;
 int tun_fops ;

struct ptr_ring *tun_get_tx_ring(struct file *file)
{
 struct tun_file *tfile;

 if (file->f_op != &tun_fops)
  return ERR_PTR(-EINVAL);
 tfile = file->private_data;
 if (!tfile)
  return ERR_PTR(-EBADFD);
 return &tfile->tx_ring;
}
