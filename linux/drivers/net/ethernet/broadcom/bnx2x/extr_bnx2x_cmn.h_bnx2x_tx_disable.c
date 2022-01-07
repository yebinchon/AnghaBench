
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dev; } ;


 int netif_carrier_off (int ) ;
 int netif_tx_disable (int ) ;

__attribute__((used)) static inline void bnx2x_tx_disable(struct bnx2x *bp)
{
 netif_tx_disable(bp->dev);
 netif_carrier_off(bp->dev);
}
