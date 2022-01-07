
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct tun_struct {size_t numqueues; scalar_t__ numdisabled; int flags; TYPE_1__* dev; int ** tfiles; } ;
struct tun_file {size_t queue_index; int sk; int tx_ring; int xdp_rxq; scalar_t__ detached; int * tun; } ;
struct TYPE_3__ {scalar_t__ reg_state; } ;


 int BUG_ON (int) ;
 int IFF_PERSIST ;
 scalar_t__ NETREG_REGISTERED ;
 int RCU_INIT_POINTER (int *,int *) ;
 int netif_carrier_off (TYPE_1__*) ;
 int ptr_ring_cleanup (int *,int ) ;
 int rcu_assign_pointer (int *,int *) ;
 void* rtnl_dereference (int *) ;
 int sock_put (int *) ;
 int synchronize_net () ;
 int tun_disable_queue (struct tun_struct*,struct tun_file*) ;
 struct tun_struct* tun_enable_queue (struct tun_file*) ;
 int tun_flow_delete_by_queue (struct tun_struct*,int) ;
 int tun_napi_del (struct tun_file*) ;
 int tun_napi_disable (struct tun_file*) ;
 int tun_ptr_free ;
 int tun_queue_purge (struct tun_file*) ;
 int tun_set_real_num_queues (struct tun_struct*) ;
 int unregister_netdevice (TYPE_1__*) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static void __tun_detach(struct tun_file *tfile, bool clean)
{
 struct tun_file *ntfile;
 struct tun_struct *tun;

 tun = rtnl_dereference(tfile->tun);

 if (tun && clean) {
  tun_napi_disable(tfile);
  tun_napi_del(tfile);
 }

 if (tun && !tfile->detached) {
  u16 index = tfile->queue_index;
  BUG_ON(index >= tun->numqueues);

  rcu_assign_pointer(tun->tfiles[index],
       tun->tfiles[tun->numqueues - 1]);
  ntfile = rtnl_dereference(tun->tfiles[index]);
  ntfile->queue_index = index;
  rcu_assign_pointer(tun->tfiles[tun->numqueues - 1],
       ((void*)0));

  --tun->numqueues;
  if (clean) {
   RCU_INIT_POINTER(tfile->tun, ((void*)0));
   sock_put(&tfile->sk);
  } else
   tun_disable_queue(tun, tfile);

  synchronize_net();
  tun_flow_delete_by_queue(tun, tun->numqueues + 1);

  tun_queue_purge(tfile);
  tun_set_real_num_queues(tun);
 } else if (tfile->detached && clean) {
  tun = tun_enable_queue(tfile);
  sock_put(&tfile->sk);
 }

 if (clean) {
  if (tun && tun->numqueues == 0 && tun->numdisabled == 0) {
   netif_carrier_off(tun->dev);

   if (!(tun->flags & IFF_PERSIST) &&
       tun->dev->reg_state == NETREG_REGISTERED)
    unregister_netdevice(tun->dev);
  }
  if (tun)
   xdp_rxq_info_unreg(&tfile->xdp_rxq);
  ptr_ring_cleanup(&tfile->tx_ring, tun_ptr_free);
  sock_put(&tfile->sk);
 }
}
