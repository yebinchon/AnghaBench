
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {int lock; } ;






 int VECTOR_MASK ;
 int scc_exint (struct scc_channel*) ;
 int scc_rxint (struct scc_channel*) ;
 int scc_spint (struct scc_channel*) ;
 int scc_txint (struct scc_channel*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void scc_isr_dispatch(struct scc_channel *scc, int vector)
{
 spin_lock(&scc->lock);
 switch (vector & VECTOR_MASK)
 {
  case 128: scc_txint(scc); break;
  case 131: scc_exint(scc); break;
  case 130: scc_rxint(scc); break;
  case 129: scc_spint(scc); break;
 }
 spin_unlock(&scc->lock);
}
