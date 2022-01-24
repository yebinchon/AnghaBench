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
struct device {int dummy; } ;
struct brcmf_pub {int /*<<< orphan*/  ops; scalar_t__ hdrlen; int /*<<< orphan*/  proto_block; int /*<<< orphan*/ * if2bss; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BRCMF_BSSIDX_INVALID ; 
 int /*<<< orphan*/  BRCMF_E_PSM_WATCHDOG ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*,...) ; 
 int FUNC2 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_pub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  brcmf_psm_watchdog_notify ; 
 struct brcmf_bus* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct device *dev)
{
	struct brcmf_bus *bus_if = FUNC8(dev);
	struct brcmf_pub *drvr = bus_if->drvr;
	int ret = 0;
	int i;

	FUNC3(TRACE, "Enter\n");

	for (i = 0; i < FUNC0(drvr->if2bss); i++)
		drvr->if2bss[i] = BRCMF_BSSIDX_INVALID;

	FUNC9(&drvr->proto_block);

	/* Link to bus module */
	drvr->hdrlen = 0;

	/* Attach and link in the protocol */
	ret = FUNC7(drvr);
	if (ret != 0) {
		FUNC1(drvr, "brcmf_prot_attach failed\n");
		goto fail;
	}

	/* Attach to events important for core code */
	FUNC6(drvr, BRCMF_E_PSM_WATCHDOG,
			    brcmf_psm_watchdog_notify);

	/* attach firmware event handler */
	FUNC5(drvr);

	ret = FUNC2(drvr, drvr->ops);
	if (ret != 0) {
		FUNC1(drvr, "dongle is not responding: err=%d\n", ret);
		goto fail;
	}

	return 0;

fail:
	FUNC4(dev);

	return ret;
}