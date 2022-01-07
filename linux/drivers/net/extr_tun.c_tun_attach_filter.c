
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tun_struct {int numqueues; int filter_attached; int fprog; int * tfiles; } ;
struct TYPE_2__ {int sk; } ;
struct tun_file {TYPE_1__ socket; } ;


 int lock_sock (int ) ;
 int release_sock (int ) ;
 struct tun_file* rtnl_dereference (int ) ;
 int sk_attach_filter (int *,int ) ;
 int tun_detach_filter (struct tun_struct*,int) ;

__attribute__((used)) static int tun_attach_filter(struct tun_struct *tun)
{
 int i, ret = 0;
 struct tun_file *tfile;

 for (i = 0; i < tun->numqueues; i++) {
  tfile = rtnl_dereference(tun->tfiles[i]);
  lock_sock(tfile->socket.sk);
  ret = sk_attach_filter(&tun->fprog, tfile->socket.sk);
  release_sock(tfile->socket.sk);
  if (ret) {
   tun_detach_filter(tun, i);
   return ret;
  }
 }

 tun->filter_attached = 1;
 return ret;
}
