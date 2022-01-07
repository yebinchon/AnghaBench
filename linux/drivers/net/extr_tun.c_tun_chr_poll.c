
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tun_struct {TYPE_3__* dev; } ;
struct TYPE_4__ {struct sock* sk; } ;
struct tun_file {int tx_ring; TYPE_1__ socket; } ;
struct sock {TYPE_2__* sk_socket; } ;
struct file {struct tun_file* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_6__ {scalar_t__ reg_state; } ;
struct TYPE_5__ {int flags; } ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int KERN_INFO ;
 scalar_t__ NETREG_REGISTERED ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int poll_wait (struct file*,int ,int *) ;
 int ptr_ring_empty (int *) ;
 int sk_sleep (struct sock*) ;
 int test_and_set_bit (int ,int *) ;
 int tun_debug (int ,struct tun_struct*,char*) ;
 struct tun_struct* tun_get (struct tun_file*) ;
 int tun_put (struct tun_struct*) ;
 scalar_t__ tun_sock_writeable (struct tun_struct*,struct tun_file*) ;

__attribute__((used)) static __poll_t tun_chr_poll(struct file *file, poll_table *wait)
{
 struct tun_file *tfile = file->private_data;
 struct tun_struct *tun = tun_get(tfile);
 struct sock *sk;
 __poll_t mask = 0;

 if (!tun)
  return EPOLLERR;

 sk = tfile->socket.sk;

 tun_debug(KERN_INFO, tun, "tun_chr_poll\n");

 poll_wait(file, sk_sleep(sk), wait);

 if (!ptr_ring_empty(&tfile->tx_ring))
  mask |= EPOLLIN | EPOLLRDNORM;






 if (tun_sock_writeable(tun, tfile) ||
     (!test_and_set_bit(SOCKWQ_ASYNC_NOSPACE, &sk->sk_socket->flags) &&
      tun_sock_writeable(tun, tfile)))
  mask |= EPOLLOUT | EPOLLWRNORM;

 if (tun->dev->reg_state != NETREG_REGISTERED)
  mask = EPOLLERR;

 tun_put(tun);
 return mask;
}
