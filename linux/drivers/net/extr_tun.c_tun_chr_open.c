
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int sk_sndbuf; int sk_write_space; } ;
struct TYPE_9__ {int wait; } ;
struct TYPE_11__ {int * ops; struct file* file; TYPE_2__ wq; } ;
struct tun_file {TYPE_3__ sk; int next; TYPE_4__ socket; scalar_t__ ifindex; scalar_t__ flags; int tun; int napi_mutex; int tx_ring; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct tun_file* private_data; } ;
struct TYPE_12__ {TYPE_1__* nsproxy; } ;
struct TYPE_8__ {struct net* net_ns; } ;


 int AF_UNSPEC ;
 int DBG1 (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INT_MAX ;
 int KERN_INFO ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SOCK_ZEROCOPY ;
 TYPE_7__* current ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 scalar_t__ ptr_ring_init (int *,int ,int ) ;
 scalar_t__ sk_alloc (struct net*,int ,int ,int *,int ) ;
 int sk_free (TYPE_3__*) ;
 int sock_init_data (TYPE_4__*,TYPE_3__*) ;
 int sock_set_flag (TYPE_3__*,int ) ;
 int tun_proto ;
 int tun_sock_write_space ;
 int tun_socket_ops ;

__attribute__((used)) static int tun_chr_open(struct inode *inode, struct file * file)
{
 struct net *net = current->nsproxy->net_ns;
 struct tun_file *tfile;

 DBG1(KERN_INFO, "tunX: tun_chr_open\n");

 tfile = (struct tun_file *)sk_alloc(net, AF_UNSPEC, GFP_KERNEL,
         &tun_proto, 0);
 if (!tfile)
  return -ENOMEM;
 if (ptr_ring_init(&tfile->tx_ring, 0, GFP_KERNEL)) {
  sk_free(&tfile->sk);
  return -ENOMEM;
 }

 mutex_init(&tfile->napi_mutex);
 RCU_INIT_POINTER(tfile->tun, ((void*)0));
 tfile->flags = 0;
 tfile->ifindex = 0;

 init_waitqueue_head(&tfile->socket.wq.wait);

 tfile->socket.file = file;
 tfile->socket.ops = &tun_socket_ops;

 sock_init_data(&tfile->socket, &tfile->sk);

 tfile->sk.sk_write_space = tun_sock_write_space;
 tfile->sk.sk_sndbuf = INT_MAX;

 file->private_data = tfile;
 INIT_LIST_HEAD(&tfile->next);

 sock_set_flag(&tfile->sk, SOCK_ZEROCOPY);

 return 0;
}
