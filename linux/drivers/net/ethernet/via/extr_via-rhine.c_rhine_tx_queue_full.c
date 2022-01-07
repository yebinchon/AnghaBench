
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {scalar_t__ cur_tx; scalar_t__ dirty_tx; } ;


 scalar_t__ TX_QUEUE_LEN ;

__attribute__((used)) static inline bool rhine_tx_queue_full(struct rhine_private *rp)
{
 return (rp->cur_tx - rp->dirty_tx) >= TX_QUEUE_LEN;
}
