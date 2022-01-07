
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int used; } ;
struct be_tx_obj {TYPE_1__ q; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline bool be_can_txq_wake(struct be_tx_obj *txo)
{
 return atomic_read(&txo->q.used) < txo->q.len / 2;
}
