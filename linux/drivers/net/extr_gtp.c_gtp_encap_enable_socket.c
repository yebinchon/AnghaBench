
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_sock_cfg {int encap_type; int encap_destroy; int encap_rcv; struct gtp_dev* sk_user_data; int * member_0; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_protocol; scalar_t__ sk_user_data; } ;
struct gtp_dev {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct sock* ERR_PTR (int ) ;
 scalar_t__ IPPROTO_UDP ;
 int gtp_encap_destroy ;
 int gtp_encap_recv ;
 int lock_sock (struct sock*) ;
 int pr_debug (char*,int,...) ;
 int release_sock (struct sock*) ;
 int setup_udp_tunnel_sock (int ,struct socket*,struct udp_tunnel_sock_cfg*) ;
 int sock_hold (struct sock*) ;
 int sock_net (struct sock*) ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;

__attribute__((used)) static struct sock *gtp_encap_enable_socket(int fd, int type,
         struct gtp_dev *gtp)
{
 struct udp_tunnel_sock_cfg tuncfg = {((void*)0)};
 struct socket *sock;
 struct sock *sk;
 int err;

 pr_debug("enable gtp on %d, %d\n", fd, type);

 sock = sockfd_lookup(fd, &err);
 if (!sock) {
  pr_debug("gtp socket fd=%d not found\n", fd);
  return ((void*)0);
 }

 if (sock->sk->sk_protocol != IPPROTO_UDP) {
  pr_debug("socket fd=%d not UDP\n", fd);
  sk = ERR_PTR(-EINVAL);
  goto out_sock;
 }

 lock_sock(sock->sk);
 if (sock->sk->sk_user_data) {
  sk = ERR_PTR(-EBUSY);
  goto out_sock;
 }

 sk = sock->sk;
 sock_hold(sk);

 tuncfg.sk_user_data = gtp;
 tuncfg.encap_type = type;
 tuncfg.encap_rcv = gtp_encap_recv;
 tuncfg.encap_destroy = gtp_encap_destroy;

 setup_udp_tunnel_sock(sock_net(sock->sk), sock, &tuncfg);

out_sock:
 release_sock(sock->sk);
 sockfd_put(sock);
 return sk;
}
