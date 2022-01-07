
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* sk; } ;
struct tun_file {int flags; TYPE_1__ socket; int fasync; } ;
struct TYPE_4__ {int (* sk_data_ready ) (TYPE_2__*) ;} ;


 int POLL_IN ;
 int SIGIO ;
 int TUN_FASYNC ;
 int kill_fasync (int *,int ,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void __tun_xdp_flush_tfile(struct tun_file *tfile)
{

 if (tfile->flags & TUN_FASYNC)
  kill_fasync(&tfile->fasync, SIGIO, POLL_IN);
 tfile->socket.sk->sk_data_ready(tfile->socket.sk);
}
