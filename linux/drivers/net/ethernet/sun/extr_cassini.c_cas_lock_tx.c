
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int * tx_lock; } ;


 int N_TX_RINGS ;
 int spin_lock_nested (int *,int) ;

__attribute__((used)) static inline void cas_lock_tx(struct cas *cp)
{
 int i;

 for (i = 0; i < N_TX_RINGS; i++)
  spin_lock_nested(&cp->tx_lock[i], i);
}
