
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cas {scalar_t__* tx_tiny_dvma; TYPE_1__** tx_tiny_use; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int used; int nbufs; } ;


 int const TX_TINY_BUF_LEN ;

__attribute__((used)) static inline dma_addr_t tx_tiny_map(struct cas *cp, const int ring,
         const int entry, const int tentry)
{
 cp->tx_tiny_use[ring][tentry].nbufs++;
 cp->tx_tiny_use[ring][entry].used = 1;
 return cp->tx_tiny_dvma[ring] + TX_TINY_BUF_LEN*entry;
}
