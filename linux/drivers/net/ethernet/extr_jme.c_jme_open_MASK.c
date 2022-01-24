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
struct net_device {int dummy; } ;
struct jme_adapter {int /*<<< orphan*/  old_cmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  txclean_task; int /*<<< orphan*/  linkch_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_SSET ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  jme_link_change_tasklet ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 
 int FUNC5 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct jme_adapter*) ; 
 int /*<<< orphan*/  jme_rx_clean_tasklet ; 
 int /*<<< orphan*/  jme_rx_empty_tasklet ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct jme_adapter*) ; 
 int /*<<< orphan*/  jme_tx_clean_tasklet ; 
 struct jme_adapter* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC10(netdev);
	int rc;

	FUNC1(jme);
	FUNC0(jme);

	FUNC13(&jme->linkch_task, jme_link_change_tasklet,
		     (unsigned long) jme);
	FUNC13(&jme->txclean_task, jme_tx_clean_tasklet,
		     (unsigned long) jme);
	FUNC13(&jme->rxclean_task, jme_rx_clean_tasklet,
		     (unsigned long) jme);
	FUNC13(&jme->rxempty_task, jme_rx_empty_tasklet,
		     (unsigned long) jme);

	rc = FUNC5(jme);
	if (rc)
		goto err_out;

	FUNC9(jme);

	FUNC3(jme);
	if (FUNC14(JME_FLAG_SSET, &jme->flags))
		FUNC8(netdev, &jme->old_cmd);
	else
		FUNC7(jme);
	FUNC2(jme);
	FUNC4(jme);
	FUNC6(jme);

	return 0;

err_out:
	FUNC12(netdev);
	FUNC11(netdev);
	return rc;
}