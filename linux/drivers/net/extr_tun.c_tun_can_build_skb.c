
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tun_struct {int flags; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct tun_file {TYPE_2__ socket; } ;
struct skb_shared_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ sk_sndbuf; } ;


 int IFF_TAP ;
 scalar_t__ INT_MAX ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ SKB_DATA_ALIGN (int) ;
 int TUN_RX_PAD ;
 int TUN_TYPE_MASK ;

__attribute__((used)) static bool tun_can_build_skb(struct tun_struct *tun, struct tun_file *tfile,
         int len, int noblock, bool zerocopy)
{
 if ((tun->flags & TUN_TYPE_MASK) != IFF_TAP)
  return 0;

 if (tfile->socket.sk->sk_sndbuf != INT_MAX)
  return 0;

 if (!noblock)
  return 0;

 if (zerocopy)
  return 0;

 if (SKB_DATA_ALIGN(len + TUN_RX_PAD) +
     SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) > PAGE_SIZE)
  return 0;

 return 1;
}
