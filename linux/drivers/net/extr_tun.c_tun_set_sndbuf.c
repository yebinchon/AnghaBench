
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tun_struct {int numqueues; int sndbuf; int * tfiles; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct tun_file {TYPE_2__ socket; } ;
struct TYPE_3__ {int sk_sndbuf; } ;


 struct tun_file* rtnl_dereference (int ) ;

__attribute__((used)) static void tun_set_sndbuf(struct tun_struct *tun)
{
 struct tun_file *tfile;
 int i;

 for (i = 0; i < tun->numqueues; i++) {
  tfile = rtnl_dereference(tun->tfiles[i]);
  tfile->socket.sk->sk_sndbuf = tun->sndbuf;
 }
}
