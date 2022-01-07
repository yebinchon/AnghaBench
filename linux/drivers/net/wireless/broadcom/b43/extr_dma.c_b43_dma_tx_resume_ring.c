
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_dmaring {TYPE_1__* ops; int tx; } ;
struct TYPE_2__ {int (* tx_resume ) (struct b43_dmaring*) ;} ;


 int B43_WARN_ON (int) ;
 int stub1 (struct b43_dmaring*) ;

__attribute__((used)) static void b43_dma_tx_resume_ring(struct b43_dmaring *ring)
{
 B43_WARN_ON(!ring->tx);
 ring->ops->tx_resume(ring);
}
