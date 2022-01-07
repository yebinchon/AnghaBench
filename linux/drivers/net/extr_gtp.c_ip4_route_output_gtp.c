
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_protocol; int sk_bound_dev_if; } ;
struct rtable {int dummy; } ;
struct flowi4 {int flowi4_proto; int flowi4_tos; int saddr; int daddr; int flowi4_oif; } ;
typedef int __be32 ;
struct TYPE_2__ {int inet_saddr; } ;


 int RT_CONN_FLAGS (struct sock const*) ;
 TYPE_1__* inet_sk (struct sock const*) ;
 struct rtable* ip_route_output_key (int ,struct flowi4*) ;
 int memset (struct flowi4*,int ,int) ;
 int sock_net (struct sock const*) ;

__attribute__((used)) static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
        const struct sock *sk,
        __be32 daddr)
{
 memset(fl4, 0, sizeof(*fl4));
 fl4->flowi4_oif = sk->sk_bound_dev_if;
 fl4->daddr = daddr;
 fl4->saddr = inet_sk(sk)->inet_saddr;
 fl4->flowi4_tos = RT_CONN_FLAGS(sk);
 fl4->flowi4_proto = sk->sk_protocol;

 return ip_route_output_key(sock_net(sk), fl4);
}
