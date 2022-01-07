
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tun_struct {TYPE_2__* pcpu_stats; int txflt; int steering_prog; int * tfiles; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct tun_file {int flags; TYPE_1__ socket; int fasync; int tx_ring; } ;
struct sk_buff {int queue_mapping; int len; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_7__ {int (* sk_data_ready ) (TYPE_3__*) ;scalar_t__ sk_filter; } ;
struct TYPE_6__ {int tx_dropped; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int KERN_INFO ;
 int NETDEV_TX_OK ;
 int NET_XMIT_DROP ;
 int POLL_IN ;
 int SIGIO ;
 int TUN_FASYNC ;
 int check_filter (int *,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int kill_fasync (int *,int ,int ) ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int nf_reset_ct (struct sk_buff*) ;
 scalar_t__ pskb_trim (struct sk_buff*,int) ;
 scalar_t__ ptr_ring_produce (int *,struct sk_buff*) ;
 struct tun_file* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int run_ebpf_filter (struct tun_struct*,struct sk_buff*,int) ;
 scalar_t__ sk_filter (TYPE_3__*,struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_orphan_frags_rx (struct sk_buff*,int ) ;
 int skb_tx_error (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int stub1 (TYPE_3__*) ;
 int this_cpu_inc (int ) ;
 int tun_automq_xmit (struct tun_struct*,struct sk_buff*) ;
 int tun_debug (int ,struct tun_struct*,char*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static netdev_tx_t tun_net_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);
 int txq = skb->queue_mapping;
 struct tun_file *tfile;
 int len = skb->len;

 rcu_read_lock();
 tfile = rcu_dereference(tun->tfiles[txq]);


 if (!tfile)
  goto drop;

 if (!rcu_dereference(tun->steering_prog))
  tun_automq_xmit(tun, skb);

 tun_debug(KERN_INFO, tun, "tun_net_xmit %d\n", skb->len);

 BUG_ON(!tfile);




 if (!check_filter(&tun->txflt, skb))
  goto drop;

 if (tfile->socket.sk->sk_filter &&
     sk_filter(tfile->socket.sk, skb))
  goto drop;

 len = run_ebpf_filter(tun, skb, len);
 if (len == 0 || pskb_trim(skb, len))
  goto drop;

 if (unlikely(skb_orphan_frags_rx(skb, GFP_ATOMIC)))
  goto drop;

 skb_tx_timestamp(skb);




 skb_orphan(skb);

 nf_reset_ct(skb);

 if (ptr_ring_produce(&tfile->tx_ring, skb))
  goto drop;


 if (tfile->flags & TUN_FASYNC)
  kill_fasync(&tfile->fasync, SIGIO, POLL_IN);
 tfile->socket.sk->sk_data_ready(tfile->socket.sk);

 rcu_read_unlock();
 return NETDEV_TX_OK;

drop:
 this_cpu_inc(tun->pcpu_stats->tx_dropped);
 skb_tx_error(skb);
 kfree_skb(skb);
 rcu_read_unlock();
 return NET_XMIT_DROP;
}
