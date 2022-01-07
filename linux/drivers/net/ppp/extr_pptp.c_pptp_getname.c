
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int sk; } ;
struct TYPE_8__ {int pptp; } ;
struct sockaddr_pppox {TYPE_4__ sa_addr; int sa_protocol; int sa_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int src_addr; } ;
struct TYPE_6__ {TYPE_1__ pptp; } ;
struct TYPE_7__ {TYPE_2__ proto; } ;


 int AF_PPPOX ;
 int PX_PROTO_PPTP ;
 int memcpy (struct sockaddr*,struct sockaddr_pppox*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 TYPE_3__* pppox_sk (int ) ;

__attribute__((used)) static int pptp_getname(struct socket *sock, struct sockaddr *uaddr,
 int peer)
{
 int len = sizeof(struct sockaddr_pppox);
 struct sockaddr_pppox sp;

 memset(&sp.sa_addr, 0, sizeof(sp.sa_addr));

 sp.sa_family = AF_PPPOX;
 sp.sa_protocol = PX_PROTO_PPTP;
 sp.sa_addr.pptp = pppox_sk(sock->sk)->proto.pptp.src_addr;

 memcpy(uaddr, &sp, len);

 return len;
}
