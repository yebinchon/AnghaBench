
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int udp_conf ;
struct TYPE_2__ {int s_addr; } ;
struct udp_port_cfg {int ipv6_v6only; int use_udp6_rx_checksums; int local_udp_port; TYPE_1__ local_ip; int family; } ;
struct socket {int dummy; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 int AF_INET ;
 int AF_INET6 ;
 struct socket* ERR_PTR (int) ;
 int INADDR_ANY ;
 int htonl (int ) ;
 int memset (struct udp_port_cfg*,int ,int) ;
 int udp_sock_create (struct net*,struct udp_port_cfg*,struct socket**) ;

__attribute__((used)) static struct socket *geneve_create_sock(struct net *net, bool ipv6,
      __be16 port, bool ipv6_rx_csum)
{
 struct socket *sock;
 struct udp_port_cfg udp_conf;
 int err;

 memset(&udp_conf, 0, sizeof(udp_conf));

 if (ipv6) {
  udp_conf.family = AF_INET6;
  udp_conf.ipv6_v6only = 1;
  udp_conf.use_udp6_rx_checksums = ipv6_rx_csum;
 } else {
  udp_conf.family = AF_INET;
  udp_conf.local_ip.s_addr = htonl(INADDR_ANY);
 }

 udp_conf.local_udp_port = port;


 err = udp_sock_create(net, &udp_conf, &sock);
 if (err < 0)
  return ERR_PTR(err);

 return sock;
}
