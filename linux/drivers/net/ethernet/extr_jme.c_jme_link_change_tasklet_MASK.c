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
struct net_device {scalar_t__ mtu; } ;
struct jme_adapter {scalar_t__ old_mtu; int /*<<< orphan*/  link_changing; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  txclean_task; int /*<<< orphan*/  flags; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct jme_adapter*) ; 
 scalar_t__ FUNC12 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct jme_adapter*) ; 
 int FUNC14 (struct jme_adapter*) ; 
 int FUNC15 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 scalar_t__ FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct jme_adapter*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC29(unsigned long arg)
{
	struct jme_adapter *jme = (struct jme_adapter *)arg;
	struct net_device *netdev = jme->dev;
	int rc;

	while (!FUNC0(&jme->link_changing)) {
		FUNC1(&jme->link_changing);
		FUNC22(jme, intr, jme->dev, "Get link change lock failed\n");
		while (FUNC2(&jme->link_changing) != 1)
			FUNC22(jme, intr, jme->dev, "Waiting link change lock\n");
	}

	if (FUNC3(netdev, 1) && jme->old_mtu == netdev->mtu)
		goto out;

	jme->old_mtu = netdev->mtu;
	FUNC24(netdev);
	if (FUNC12(jme))
		FUNC19(jme);

	FUNC18(jme);
	FUNC26(&jme->txclean_task);
	FUNC26(&jme->rxclean_task);
	FUNC26(&jme->rxempty_task);

	if (FUNC21(netdev)) {
		FUNC4(jme);
		FUNC5(jme);
		FUNC13(jme);
		FUNC8(jme);
		FUNC9(jme);

		if (FUNC28(JME_FLAG_POLL, &jme->flags))
			FUNC11(jme);

		FUNC20(netdev);
	}

	FUNC3(netdev, 0);
	if (FUNC21(netdev)) {
		rc = FUNC14(jme);
		if (rc) {
			FUNC25("Allocating resources for RX error, Device STOPPED!\n");
			goto out_enable_tasklet;
		}

		rc = FUNC15(jme);
		if (rc) {
			FUNC25("Allocating resources for TX error, Device STOPPED!\n");
			goto err_out_free_rx_resources;
		}

		FUNC6(jme);
		FUNC7(jme);

		FUNC23(netdev);

		if (FUNC28(JME_FLAG_POLL, &jme->flags))
			FUNC10(jme);

		FUNC16(jme);
	} else if (FUNC12(jme)) {
		FUNC17(jme);
	}

	goto out_enable_tasklet;

err_out_free_rx_resources:
	FUNC8(jme);
out_enable_tasklet:
	FUNC27(&jme->txclean_task);
	FUNC27(&jme->rxclean_task);
	FUNC27(&jme->rxempty_task);
out:
	FUNC1(&jme->link_changing);
}