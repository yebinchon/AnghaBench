
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_rxpage {scalar_t__ pg_off; scalar_t__ daddr; } ;
typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static inline dma_addr_t aq_buf_daddr(struct aq_rxpage *rxpage)
{
 return rxpage->daddr + rxpage->pg_off;
}
