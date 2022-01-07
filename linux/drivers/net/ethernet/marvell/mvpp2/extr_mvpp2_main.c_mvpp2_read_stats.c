
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct mvpp2_port {int id; int ntxqs; int nrxqs; scalar_t__ first_rxq; int priv; int * ethtool_stats; } ;
struct TYPE_7__ {scalar_t__ offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ MVPP22_CTRS_TX_CTR (int,int) ;
 TYPE_1__* mvpp2_ethtool_mib_regs ;
 TYPE_1__* mvpp2_ethtool_port_regs ;
 TYPE_1__* mvpp2_ethtool_rxq_regs ;
 TYPE_1__* mvpp2_ethtool_txq_regs ;
 scalar_t__ mvpp2_read (int ,scalar_t__) ;
 scalar_t__ mvpp2_read_count (struct mvpp2_port*,TYPE_1__*) ;
 scalar_t__ mvpp2_read_index (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void mvpp2_read_stats(struct mvpp2_port *port)
{
 u64 *pstats;
 int i, q;

 pstats = port->ethtool_stats;

 for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_mib_regs); i++)
  *pstats++ += mvpp2_read_count(port, &mvpp2_ethtool_mib_regs[i]);

 for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_port_regs); i++)
  *pstats++ += mvpp2_read(port->priv,
     mvpp2_ethtool_port_regs[i].offset +
     4 * port->id);

 for (q = 0; q < port->ntxqs; q++)
  for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_txq_regs); i++)
   *pstats++ += mvpp2_read_index(port->priv,
            MVPP22_CTRS_TX_CTR(port->id, i),
            mvpp2_ethtool_txq_regs[i].offset);




 for (q = 0; q < port->nrxqs; q++)
  for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_rxq_regs); i++)
   *pstats++ += mvpp2_read_index(port->priv,
            port->first_rxq + i,
            mvpp2_ethtool_rxq_regs[i].offset);
}
