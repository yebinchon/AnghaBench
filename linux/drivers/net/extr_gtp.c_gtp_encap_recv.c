
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct gtp_dev {int dev; } ;
struct TYPE_2__ {int encap_type; } ;




 int gtp0_udp_encap_recv (struct gtp_dev*,struct sk_buff*) ;
 int gtp1u_udp_encap_recv (struct gtp_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int netdev_dbg (int ,char*,...) ;
 struct gtp_dev* rcu_dereference_sk_user_data (struct sock*) ;
 TYPE_1__* udp_sk (struct sock*) ;

__attribute__((used)) static int gtp_encap_recv(struct sock *sk, struct sk_buff *skb)
{
 struct gtp_dev *gtp;
 int ret = 0;

 gtp = rcu_dereference_sk_user_data(sk);
 if (!gtp)
  return 1;

 netdev_dbg(gtp->dev, "encap_recv sk=%p\n", sk);

 switch (udp_sk(sk)->encap_type) {
 case 129:
  netdev_dbg(gtp->dev, "received GTP0 packet\n");
  ret = gtp0_udp_encap_recv(gtp, skb);
  break;
 case 128:
  netdev_dbg(gtp->dev, "received GTP1U packet\n");
  ret = gtp1u_udp_encap_recv(gtp, skb);
  break;
 default:
  ret = -1;
 }

 switch (ret) {
 case 1:
  netdev_dbg(gtp->dev, "pass up to the process\n");
  break;
 case 0:
  break;
 case -1:
  netdev_dbg(gtp->dev, "GTP packet has been dropped\n");
  kfree_skb(skb);
  ret = 0;
  break;
 }

 return ret;
}
