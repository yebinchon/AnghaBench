
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int used; } ;
struct be_tx_obj {TYPE_1__ q; } ;


 scalar_t__ BE_MAX_TX_FRAG_COUNT ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool be_is_txq_full(struct be_tx_obj *txo)
{
 return atomic_read(&txo->q.used) + BE_MAX_TX_FRAG_COUNT >= txo->q.len;
}
