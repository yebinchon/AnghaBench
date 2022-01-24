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
struct qede_dev {int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; } ;
struct qed_link_output {scalar_t__ link_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  QEDE_FLAGS_LINK_REQUESTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void *dev, struct qed_link_output *link)
{
	struct qede_dev *edev = dev;

	if (!FUNC9(QEDE_FLAGS_LINK_REQUESTED, &edev->flags)) {
		FUNC1(edev, NETIF_MSG_LINK, "Interface is not ready\n");
		return;
	}

	if (link->link_up) {
		if (!FUNC3(edev->ndev)) {
			FUNC0(edev, "Link is up\n");
			FUNC6(edev->ndev);
			FUNC4(edev->ndev);
			FUNC8(edev);
		}
	} else {
		if (FUNC3(edev->ndev)) {
			FUNC0(edev, "Link is down\n");
			FUNC5(edev->ndev);
			FUNC2(edev->ndev);
			FUNC7(edev);
		}
	}
}