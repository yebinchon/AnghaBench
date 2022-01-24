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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_enet_pdata {int dummy; } ;
struct xgene_enet_desc_ring {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENET_CFGSSQMIFPRESET_ADDR ; 
 int /*<<< orphan*/  ENET_CFGSSQMIWQRESET_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct xgene_enet_pdata *pdata,
			     struct xgene_enet_desc_ring *ring)
{
	u32 addr, data;

	if (FUNC2(ring->id)) {
		addr = ENET_CFGSSQMIFPRESET_ADDR;
		data = FUNC0(FUNC1(ring->id));
	} else {
		addr = ENET_CFGSSQMIWQRESET_ADDR;
		data = FUNC0(FUNC3(ring->id));
	}

	FUNC4(pdata, addr, data);
}