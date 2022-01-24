#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cfg80211_ops {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct brcmf_pub {TYPE_1__* settings; struct brcmf_if** iflist; int /*<<< orphan*/ * config; int /*<<< orphan*/  bus_reset; TYPE_2__ inetaddr_notifier; TYPE_4__ inet6addr_notifier; struct brcmf_bus* bus_if; } ;
struct brcmf_if {int /*<<< orphan*/  ndev; } ;
struct brcmf_bus {int dummy; } ;
struct TYPE_5__ {scalar_t__ ignore_probe_fail; scalar_t__ p2p_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_BUS_UP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct brcmf_if*) ; 
 int FUNC2 (struct brcmf_if*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pub*,char*,int) ; 
 struct brcmf_if* FUNC4 (struct brcmf_pub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_bus*) ; 
 int FUNC7 (struct brcmf_bus*) ; 
 int FUNC8 (struct brcmf_if*) ; 
 int /*<<< orphan*/ * FUNC9 (struct brcmf_pub*,struct cfg80211_ops*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  brcmf_core_bus_reset ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_pub*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  FUNC15 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  brcmf_inet6addr_changed ; 
 int /*<<< orphan*/  brcmf_inetaddr_changed ; 
 int FUNC16 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC19 (struct brcmf_pub*,struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC20 (struct brcmf_pub*) ; 
 int FUNC21 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  brcmf_revinfo_read ; 
 int /*<<< orphan*/  bus_reset_fops ; 
 int /*<<< orphan*/  FUNC22 (char*,int,int /*<<< orphan*/ ,struct brcmf_pub*,int /*<<< orphan*/ *) ; 
 int FUNC23 (TYPE_4__*) ; 
 int FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC26(struct brcmf_pub *drvr, struct cfg80211_ops *ops)
{
	int ret = -1;
	struct brcmf_bus *bus_if = drvr->bus_if;
	struct brcmf_if *ifp;
	struct brcmf_if *p2p_ifp;

	FUNC11(TRACE, "\n");

	/* add primary networking interface */
	ifp = FUNC4(drvr, 0, 0, false, "wlan%d", NULL);
	if (FUNC1(ifp))
		return FUNC2(ifp);

	p2p_ifp = NULL;

	/* signal bus ready */
	FUNC5(bus_if, BRCMF_BUS_UP);

	/* do bus specific preinit here */
	ret = FUNC7(bus_if);
	if (ret < 0)
		goto fail;

	/* Bus is ready, do any initialization */
	ret = FUNC8(ifp);
	if (ret < 0)
		goto fail;

	FUNC14(drvr);

	ret = FUNC21(drvr);
	if (ret < 0)
		goto fail;

	FUNC19(drvr, ifp);

	drvr->config = FUNC9(drvr, ops,
					     drvr->settings->p2p_enable);
	if (drvr->config == NULL) {
		ret = -ENOMEM;
		goto fail;
	}

	ret = FUNC16(ifp, false);

	if ((!ret) && (drvr->settings->p2p_enable)) {
		p2p_ifp = drvr->iflist[1];
		if (p2p_ifp)
			ret = FUNC18(p2p_ifp);
	}

	if (ret)
		goto fail;

#ifdef CONFIG_INET
	drvr->inetaddr_notifier.notifier_call = brcmf_inetaddr_changed;
	ret = register_inetaddr_notifier(&drvr->inetaddr_notifier);
	if (ret)
		goto fail;

#if IS_ENABLED(CONFIG_IPV6)
	drvr->inet6addr_notifier.notifier_call = brcmf_inet6addr_changed;
	ret = register_inet6addr_notifier(&drvr->inet6addr_notifier);
	if (ret) {
		unregister_inetaddr_notifier(&drvr->inetaddr_notifier);
		goto fail;
	}
#endif
#endif /* CONFIG_INET */

	FUNC0(&drvr->bus_reset, brcmf_core_bus_reset);

	/* populate debugfs */
	FUNC12(drvr, "revinfo", brcmf_revinfo_read);
	FUNC22("reset", 0600, FUNC13(drvr), drvr,
			    &bus_reset_fops);
	FUNC15(drvr);
	FUNC20(drvr);
	FUNC6(bus_if);

	return 0;

fail:
	FUNC3(drvr, "failed: %d\n", ret);
	if (drvr->config) {
		FUNC10(drvr->config);
		drvr->config = NULL;
	}
	FUNC17(ifp->ndev, false);
	if (p2p_ifp)
		FUNC17(p2p_ifp->ndev, false);
	drvr->iflist[0] = NULL;
	drvr->iflist[1] = NULL;
	if (drvr->settings->ignore_probe_fail)
		ret = 0;

	return ret;
}