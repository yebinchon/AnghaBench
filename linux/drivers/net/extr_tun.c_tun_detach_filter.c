
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tun_struct {int filter_attached; int * tfiles; } ;
struct TYPE_2__ {int sk; } ;
struct tun_file {TYPE_1__ socket; } ;


 int lock_sock (int ) ;
 int release_sock (int ) ;
 struct tun_file* rtnl_dereference (int ) ;
 int sk_detach_filter (int ) ;

__attribute__((used)) static void tun_detach_filter(struct tun_struct *tun, int n)
{
 int i;
 struct tun_file *tfile;

 for (i = 0; i < n; i++) {
  tfile = rtnl_dereference(tun->tfiles[i]);
  lock_sock(tfile->socket.sk);
  sk_detach_filter(tfile->socket.sk);
  release_sock(tfile->socket.sk);
 }

 tun->filter_attached = 0;
}
