
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree_skb (void*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int mwifiex_free_ack_frame(int id, void *p, void *data)
{
 pr_warn("Have pending ack frames!\n");
 kfree_skb(p);
 return 0;
}
