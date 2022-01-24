#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xgbe_ring_desc {int /*<<< orphan*/  desc3; int /*<<< orphan*/  desc2; int /*<<< orphan*/  desc1; int /*<<< orphan*/  desc0; } ;
struct xgbe_ring_data {struct xgbe_ring_desc* rdesc; } ;
struct xgbe_ring {int dummy; } ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 struct xgbe_ring_data* FUNC0 (struct xgbe_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct xgbe_prv_data *pdata, struct xgbe_ring *ring,
		       unsigned int idx, unsigned int count, unsigned int flag)
{
	struct xgbe_ring_data *rdata;
	struct xgbe_ring_desc *rdesc;

	while (count--) {
		rdata = FUNC0(ring, idx);
		rdesc = rdata->rdesc;
		FUNC2(pdata->netdev,
			   "TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\n", idx,
			   (flag == 1) ? "QUEUED FOR TX" : "TX BY DEVICE",
			   FUNC1(rdesc->desc0),
			   FUNC1(rdesc->desc1),
			   FUNC1(rdesc->desc2),
			   FUNC1(rdesc->desc3));
		idx++;
	}
}