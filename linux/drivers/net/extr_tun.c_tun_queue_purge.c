
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk_error_queue; int sk_write_queue; } ;
struct tun_file {TYPE_1__ sk; int tx_ring; } ;


 void* ptr_ring_consume (int *) ;
 int skb_queue_purge (int *) ;
 int tun_ptr_free (void*) ;

__attribute__((used)) static void tun_queue_purge(struct tun_file *tfile)
{
 void *ptr;

 while ((ptr = ptr_ring_consume(&tfile->tx_ring)) != ((void*)0))
  tun_ptr_free(ptr);

 skb_queue_purge(&tfile->sk.sk_write_queue);
 skb_queue_purge(&tfile->sk.sk_error_queue);
}
