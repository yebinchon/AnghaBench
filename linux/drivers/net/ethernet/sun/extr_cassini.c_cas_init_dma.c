
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int dummy; } ;


 int cas_init_rx_dma (struct cas*) ;
 int cas_init_tx_dma (struct cas*) ;

__attribute__((used)) static inline void cas_init_dma(struct cas *cp)
{
 cas_init_tx_dma(cp);
 cas_init_rx_dma(cp);
}
