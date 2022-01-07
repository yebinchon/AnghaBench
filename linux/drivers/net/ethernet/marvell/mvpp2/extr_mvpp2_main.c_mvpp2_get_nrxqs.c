
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {scalar_t__ hw_version; } ;


 scalar_t__ MVPP22 ;
 unsigned int MVPP2_PORT_MAX_RXQ ;
 scalar_t__ MVPP2_QDIST_SINGLE_MODE ;
 int num_possible_cpus () ;
 scalar_t__ queue_mode ;

__attribute__((used)) static int mvpp2_get_nrxqs(struct mvpp2 *priv)
{
 unsigned int nrxqs;

 if (priv->hw_version == MVPP22 && queue_mode == MVPP2_QDIST_SINGLE_MODE)
  return 1;






 nrxqs = (num_possible_cpus() + 3) & ~0x3;
 if (nrxqs > MVPP2_PORT_MAX_RXQ)
  nrxqs = MVPP2_PORT_MAX_RXQ;

 return nrxqs;
}
