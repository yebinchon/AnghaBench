
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int sk; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {struct sockaddr pppoe; } ;
struct sockaddr_pppox {TYPE_1__ sa_addr; int sa_protocol; int sa_family; } ;
struct pppoe_addr {int dummy; } ;
struct TYPE_4__ {struct sockaddr_pppox pppoe_pa; } ;


 int AF_PPPOX ;
 int PX_PROTO_OE ;
 int memcpy (struct sockaddr*,struct sockaddr_pppox*,int) ;
 TYPE_2__* pppox_sk (int ) ;

__attribute__((used)) static int pppoe_getname(struct socket *sock, struct sockaddr *uaddr,
    int peer)
{
 int len = sizeof(struct sockaddr_pppox);
 struct sockaddr_pppox sp;

 sp.sa_family = AF_PPPOX;
 sp.sa_protocol = PX_PROTO_OE;
 memcpy(&sp.sa_addr.pppoe, &pppox_sk(sock->sk)->pppoe_pa,
        sizeof(struct pppoe_addr));

 memcpy(uaddr, &sp, len);

 return len;
}
