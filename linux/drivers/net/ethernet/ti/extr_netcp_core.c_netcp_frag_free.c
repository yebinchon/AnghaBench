
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;
 int skb_free_frag (void*) ;

__attribute__((used)) static void netcp_frag_free(bool is_frag, void *ptr)
{
 if (is_frag)
  skb_free_frag(ptr);
 else
  kfree(ptr);
}
