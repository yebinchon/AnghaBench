
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int queue_index; } ;
struct TYPE_10__ {TYPE_6__* sk; } ;
struct tun_struct {int flags; int numqueues; scalar_t__ numdisabled; int filter_attached; int queue_index; int * tfiles; int tun; int sk; int xdp_prog; scalar_t__ detached; TYPE_2__ xdp_rxq; struct net_device* dev; TYPE_1__ socket; int tx_ring; int fprog; int security; } ;
struct tun_file {int flags; int numqueues; scalar_t__ numdisabled; int filter_attached; int queue_index; int * tfiles; int tun; int sk; int xdp_prog; scalar_t__ detached; TYPE_2__ xdp_rxq; struct net_device* dev; TYPE_1__ socket; int tx_ring; int fprog; int security; } ;
struct net_device {int tx_queue_len; } ;
struct file {struct tun_struct* private_data; } ;
struct TYPE_12__ {int sk_shutdown; } ;


 int E2BIG ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_MULTI_QUEUE ;
 scalar_t__ MAX_TAP_QUEUES ;
 int MEM_TYPE_PAGE_SHARED ;
 int RCV_SHUTDOWN ;
 int SOCK_XDP ;
 int WARN_ON (int) ;
 int lock_sock (TYPE_6__*) ;
 scalar_t__ ptr_ring_resize (int *,int ,int ,int ) ;
 int rcu_assign_pointer (int ,struct tun_struct*) ;
 int release_sock (TYPE_6__*) ;
 scalar_t__ rtnl_dereference (int ) ;
 int security_tun_dev_attach (TYPE_6__*,int ) ;
 int sk_attach_filter (int *,TYPE_6__*) ;
 int sock_hold (int *) ;
 int sock_set_flag (int *,int ) ;
 int tun_enable_queue (struct tun_struct*) ;
 int tun_napi_init (struct tun_struct*,struct tun_struct*,int,int) ;
 int tun_ptr_free ;
 int tun_set_real_num_queues (struct tun_struct*) ;
 int xdp_rxq_info_is_reg (TYPE_2__*) ;
 int xdp_rxq_info_reg (TYPE_2__*,struct net_device*,int) ;
 int xdp_rxq_info_reg_mem_model (TYPE_2__*,int ,int *) ;
 int xdp_rxq_info_unreg (TYPE_2__*) ;

__attribute__((used)) static int tun_attach(struct tun_struct *tun, struct file *file,
        bool skip_filter, bool napi, bool napi_frags,
        bool publish_tun)
{
 struct tun_file *tfile = file->private_data;
 struct net_device *dev = tun->dev;
 int err;

 err = security_tun_dev_attach(tfile->socket.sk, tun->security);
 if (err < 0)
  goto out;

 err = -EINVAL;
 if (rtnl_dereference(tfile->tun) && !tfile->detached)
  goto out;

 err = -EBUSY;
 if (!(tun->flags & IFF_MULTI_QUEUE) && tun->numqueues == 1)
  goto out;

 err = -E2BIG;
 if (!tfile->detached &&
     tun->numqueues + tun->numdisabled == MAX_TAP_QUEUES)
  goto out;

 err = 0;


 if (!skip_filter && (tun->filter_attached == 1)) {
  lock_sock(tfile->socket.sk);
  err = sk_attach_filter(&tun->fprog, tfile->socket.sk);
  release_sock(tfile->socket.sk);
  if (!err)
   goto out;
 }

 if (!tfile->detached &&
     ptr_ring_resize(&tfile->tx_ring, dev->tx_queue_len,
       GFP_KERNEL, tun_ptr_free)) {
  err = -ENOMEM;
  goto out;
 }

 tfile->queue_index = tun->numqueues;
 tfile->socket.sk->sk_shutdown &= ~RCV_SHUTDOWN;

 if (tfile->detached) {

  WARN_ON(!xdp_rxq_info_is_reg(&tfile->xdp_rxq));

  if (tfile->xdp_rxq.queue_index != tfile->queue_index)
   tfile->xdp_rxq.queue_index = tfile->queue_index;
 } else {

  err = xdp_rxq_info_reg(&tfile->xdp_rxq,
           tun->dev, tfile->queue_index);
  if (err < 0)
   goto out;
  err = xdp_rxq_info_reg_mem_model(&tfile->xdp_rxq,
       MEM_TYPE_PAGE_SHARED, ((void*)0));
  if (err < 0) {
   xdp_rxq_info_unreg(&tfile->xdp_rxq);
   goto out;
  }
  err = 0;
 }

 if (tfile->detached) {
  tun_enable_queue(tfile);
 } else {
  sock_hold(&tfile->sk);
  tun_napi_init(tun, tfile, napi, napi_frags);
 }

 if (rtnl_dereference(tun->xdp_prog))
  sock_set_flag(&tfile->sk, SOCK_XDP);
 if (publish_tun)
  rcu_assign_pointer(tfile->tun, tun);
 rcu_assign_pointer(tun->tfiles[tun->numqueues], tfile);
 tun->numqueues++;
 tun_set_real_num_queues(tun);
out:
 return err;
}
