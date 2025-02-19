
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rtable {int dummy; } ;
struct pdp_ctx {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;
struct flowi4 {int dummy; } ;
struct gtp_pktinfo {struct net_device* dev; struct flowi4 fl4; struct rtable* rt; struct pdp_ctx* pctx; struct iphdr* iph; struct sock* sk; } ;



__attribute__((used)) static inline void gtp_set_pktinfo_ipv4(struct gtp_pktinfo *pktinfo,
     struct sock *sk, struct iphdr *iph,
     struct pdp_ctx *pctx, struct rtable *rt,
     struct flowi4 *fl4,
     struct net_device *dev)
{
 pktinfo->sk = sk;
 pktinfo->iph = iph;
 pktinfo->pctx = pctx;
 pktinfo->rt = rt;
 pktinfo->fl4 = *fl4;
 pktinfo->dev = dev;
}
