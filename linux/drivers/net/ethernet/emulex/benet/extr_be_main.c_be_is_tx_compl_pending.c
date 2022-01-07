
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used; } ;
struct be_tx_obj {scalar_t__ pend_wrb_cnt; TYPE_1__ q; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool be_is_tx_compl_pending(struct be_tx_obj *txo)
{
 return atomic_read(&txo->q.used) > txo->pend_wrb_cnt;
}
