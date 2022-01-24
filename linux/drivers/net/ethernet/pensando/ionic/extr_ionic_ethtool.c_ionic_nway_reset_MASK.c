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
struct ionic_lif {struct ionic* ionic; } ;
struct ionic {int /*<<< orphan*/  dev_cmd_lock; int /*<<< orphan*/  idev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int /*<<< orphan*/  IONIC_PORT_ADMIN_STATE_DOWN ; 
 int /*<<< orphan*/  IONIC_PORT_ADMIN_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ionic_lif* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct ionic_lif *lif = FUNC4(netdev);
	struct ionic *ionic = lif->ionic;
	int err = 0;

	/* flap the link to force auto-negotiation */

	FUNC2(&ionic->dev_cmd_lock);

	FUNC0(&ionic->idev, IONIC_PORT_ADMIN_STATE_DOWN);
	err = FUNC1(ionic, DEVCMD_TIMEOUT);

	if (!err) {
		FUNC0(&ionic->idev, IONIC_PORT_ADMIN_STATE_UP);
		err = FUNC1(ionic, DEVCMD_TIMEOUT);
	}

	FUNC3(&ionic->dev_cmd_lock);

	return err;
}