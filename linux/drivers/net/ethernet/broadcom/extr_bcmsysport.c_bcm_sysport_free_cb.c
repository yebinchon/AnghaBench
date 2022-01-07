
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sysport_cb {int * skb; } ;


 int dev_consume_skb_any (int *) ;
 int dma_addr ;
 int dma_unmap_addr_set (struct bcm_sysport_cb*,int ,int ) ;

__attribute__((used)) static void bcm_sysport_free_cb(struct bcm_sysport_cb *cb)
{
 dev_consume_skb_any(cb->skb);
 cb->skb = ((void*)0);
 dma_unmap_addr_set(cb, dma_addr, 0);
}
