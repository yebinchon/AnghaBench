
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rq; int xq; int dead; } ;
struct channel {TYPE_1__ file; int * chan_net; } ;


 int atomic_dec (int *) ;
 int channel_count ;
 int kfree (struct channel*) ;
 int pr_err (char*,struct channel*) ;
 int put_net (int *) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void ppp_destroy_channel(struct channel *pch)
{
 put_net(pch->chan_net);
 pch->chan_net = ((void*)0);

 atomic_dec(&channel_count);

 if (!pch->file.dead) {

  pr_err("ppp: destroying undead channel %p !\n", pch);
  return;
 }
 skb_queue_purge(&pch->file.xq);
 skb_queue_purge(&pch->file.rq);
 kfree(pch);
}
