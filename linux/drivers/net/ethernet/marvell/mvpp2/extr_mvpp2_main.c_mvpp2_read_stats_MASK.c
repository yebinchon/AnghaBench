#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mvpp2_port {int id; int ntxqs; int nrxqs; scalar_t__ first_rxq; int /*<<< orphan*/  priv; int /*<<< orphan*/ * ethtool_stats; } ;
struct TYPE_7__ {scalar_t__ offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 TYPE_1__* mvpp2_ethtool_mib_regs ; 
 TYPE_1__* mvpp2_ethtool_port_regs ; 
 TYPE_1__* mvpp2_ethtool_rxq_regs ; 
 TYPE_1__* mvpp2_ethtool_txq_regs ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct mvpp2_port*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mvpp2_port *port)
{
	u64 *pstats;
	int i, q;

	pstats = port->ethtool_stats;

	for (i = 0; i < FUNC0(mvpp2_ethtool_mib_regs); i++)
		*pstats++ += FUNC3(port, &mvpp2_ethtool_mib_regs[i]);

	for (i = 0; i < FUNC0(mvpp2_ethtool_port_regs); i++)
		*pstats++ += FUNC2(port->priv,
					mvpp2_ethtool_port_regs[i].offset +
					4 * port->id);

	for (q = 0; q < port->ntxqs; q++)
		for (i = 0; i < FUNC0(mvpp2_ethtool_txq_regs); i++)
			*pstats++ += FUNC4(port->priv,
						      FUNC1(port->id, i),
						      mvpp2_ethtool_txq_regs[i].offset);

	/* Rxqs are numbered from 0 from the user standpoint, but not from the
	 * driver's. We need to add the  port->first_rxq offset.
	 */
	for (q = 0; q < port->nrxqs; q++)
		for (i = 0; i < FUNC0(mvpp2_ethtool_rxq_regs); i++)
			*pstats++ += FUNC4(port->priv,
						      port->first_rxq + i,
						      mvpp2_ethtool_rxq_regs[i].offset);
}