
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_txq_pcpu {scalar_t__ txq_get_index; scalar_t__ size; } ;



__attribute__((used)) static void mvpp2_txq_inc_get(struct mvpp2_txq_pcpu *txq_pcpu)
{
 txq_pcpu->txq_get_index++;
 if (txq_pcpu->txq_get_index == txq_pcpu->size)
  txq_pcpu->txq_get_index = 0;
}
