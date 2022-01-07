
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_rx_desc {unsigned int control; int csum2_start; scalar_t__ csum2; } ;
struct skge_element {struct skge_rx_desc* desc; } ;


 unsigned int BMU_IRQ_EOF ;
 unsigned int BMU_OWN ;
 unsigned int BMU_STF ;
 unsigned int BMU_TCP_CHECK ;
 int ETH_HLEN ;
 int wmb () ;

__attribute__((used)) static inline void skge_rx_reuse(struct skge_element *e, unsigned int size)
{
 struct skge_rx_desc *rd = e->desc;

 rd->csum2 = 0;
 rd->csum2_start = ETH_HLEN;

 wmb();

 rd->control = BMU_OWN | BMU_STF | BMU_IRQ_EOF | BMU_TCP_CHECK | size;
}
