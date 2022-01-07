
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __free_page (int ) ;
 int skb_free_frag (void*) ;
 int virt_to_page (void*) ;

__attribute__((used)) static void
nfp_net_free_frag(void *frag, bool xdp)
{
 if (!xdp)
  skb_free_frag(frag);
 else
  __free_page(virt_to_page(frag));
}
