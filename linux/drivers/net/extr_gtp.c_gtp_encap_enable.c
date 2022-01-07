
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sock {int dummy; } ;
struct nlattr {int dummy; } ;
struct gtp_dev {unsigned int role; struct sock* sk1u; struct sock* sk0; } ;


 int EINVAL ;
 unsigned int GTP_ROLE_GGSN ;
 unsigned int GTP_ROLE_SGSN ;
 size_t IFLA_GTP_FD0 ;
 size_t IFLA_GTP_FD1 ;
 size_t IFLA_GTP_ROLE ;
 scalar_t__ IS_ERR (struct sock*) ;
 int PTR_ERR (struct sock*) ;
 int UDP_ENCAP_GTP0 ;
 int UDP_ENCAP_GTP1U ;
 int gtp_encap_disable_sock (struct sock*) ;
 struct sock* gtp_encap_enable_socket (void*,int ,struct gtp_dev*) ;
 void* nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
{
 struct sock *sk1u = ((void*)0);
 struct sock *sk0 = ((void*)0);
 unsigned int role = GTP_ROLE_GGSN;

 if (data[IFLA_GTP_FD0]) {
  u32 fd0 = nla_get_u32(data[IFLA_GTP_FD0]);

  sk0 = gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
  if (IS_ERR(sk0))
   return PTR_ERR(sk0);
 }

 if (data[IFLA_GTP_FD1]) {
  u32 fd1 = nla_get_u32(data[IFLA_GTP_FD1]);

  sk1u = gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
  if (IS_ERR(sk1u)) {
   if (sk0)
    gtp_encap_disable_sock(sk0);
   return PTR_ERR(sk1u);
  }
 }

 if (data[IFLA_GTP_ROLE]) {
  role = nla_get_u32(data[IFLA_GTP_ROLE]);
  if (role > GTP_ROLE_SGSN) {
   if (sk0)
    gtp_encap_disable_sock(sk0);
   if (sk1u)
    gtp_encap_disable_sock(sk1u);
   return -EINVAL;
  }
 }

 gtp->sk0 = sk0;
 gtp->sk1u = sk1u;
 gtp->role = role;

 return 0;
}
