#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2_port {TYPE_2__* dev; int /*<<< orphan*/  id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {scalar_t__ lu; scalar_t__ udf; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int MVPP2_PE_MAC_RANGE_END ; 
 int MVPP2_PE_MAC_RANGE_START ; 
 scalar_t__ MVPP2_PRS_LU_MAC ; 
 scalar_t__ MVPP2_PRS_UDF_MAC_DEF ; 
 scalar_t__ FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int,unsigned char*,unsigned char*) ; 
 unsigned long FUNC5 (struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 

void FUNC7(struct mvpp2_port *port)
{
	struct mvpp2 *priv = port->priv;
	struct mvpp2_prs_entry pe;
	unsigned long pmap;
	int index, tid;

	for (tid = MVPP2_PE_MAC_RANGE_START;
	     tid <= MVPP2_PE_MAC_RANGE_END; tid++) {
		unsigned char da[ETH_ALEN], da_mask[ETH_ALEN];

		if (!priv->prs_shadow[tid].valid ||
		    (priv->prs_shadow[tid].lu != MVPP2_PRS_LU_MAC) ||
		    (priv->prs_shadow[tid].udf != MVPP2_PRS_UDF_MAC_DEF))
			continue;

		FUNC2(priv, &pe, tid);

		pmap = FUNC5(&pe);

		/* We only want entries active on this port */
		if (!FUNC6(port->id, &pmap))
			continue;

		/* Read mac addr from entry */
		for (index = 0; index < ETH_ALEN; index++)
			FUNC4(&pe, index, &da[index],
						     &da_mask[index]);

		/* Special cases : Don't remove broadcast and port's own
		 * address
		 */
		if (FUNC1(da) ||
		    FUNC0(da, port->dev->dev_addr))
			continue;

		/* Remove entry from TCAM */
		FUNC3(port, da, false);
	}
}