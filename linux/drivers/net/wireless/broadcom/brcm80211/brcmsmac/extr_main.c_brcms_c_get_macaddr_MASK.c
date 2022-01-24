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
typedef  int /*<<< orphan*/  u8 ;
struct ssb_sprom {int /*<<< orphan*/  il0mac; int /*<<< orphan*/  et1mac; } ;
struct brcms_hardware {int _nbands; TYPE_2__* d11core; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {struct ssb_sprom sprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct brcms_hardware *wlc_hw, u8 etheraddr[ETH_ALEN])
{
	struct ssb_sprom *sprom = &wlc_hw->d11core->bus->sprom;

	/* If macaddr exists, use it (Sromrev4, CIS, ...). */
	if (!FUNC0(sprom->il0mac)) {
		FUNC1(etheraddr, sprom->il0mac, ETH_ALEN);
		return;
	}

	if (wlc_hw->_nbands > 1)
		FUNC1(etheraddr, sprom->et1mac, ETH_ALEN);
	else
		FUNC1(etheraddr, sprom->il0mac, ETH_ALEN);
}