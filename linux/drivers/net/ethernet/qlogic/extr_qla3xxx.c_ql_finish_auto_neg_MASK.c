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
struct ql3_adapter {int mac_index; int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; int /*<<< orphan*/  port_link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  LS_UP ; 
 int /*<<< orphan*/  QL_LINK_MASTER ; 
 int /*<<< orphan*/  QL_PHY_GIO_SEM_MASK ; 
 int QL_RESOURCE_BITS_BASE_CODE ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ql3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql3_adapter*) ; 
 scalar_t__ FUNC5 (struct ql3_adapter*) ; 
 scalar_t__ FUNC6 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ql3_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ql3_adapter*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ql3_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ql3_adapter*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ql3_adapter*,int) ; 
 scalar_t__ FUNC13 (struct ql3_adapter*) ; 
 scalar_t__ FUNC14 (struct ql3_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ql3_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct ql3_adapter *qdev)
{

	if (FUNC14(qdev, QL_PHY_GIO_SEM_MASK,
		(QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index) *
			 2) << 7))
		return -1;

	if (!FUNC4(qdev)) {
		if (FUNC16(QL_LINK_MASTER, &qdev->flags)) {
			/* configure the MAC */
			FUNC2(qdev, link, KERN_DEBUG, qdev->ndev,
				     "Configuring link\n");
			FUNC11(qdev, 1);
			FUNC9(qdev,
				       (FUNC5
					(qdev) ==
					SPEED_1000));
			FUNC8(qdev,
					    FUNC6
					    (qdev));
			FUNC10(qdev,
					 FUNC7
					 (qdev));
			FUNC11(qdev, 0);

			/* enable the MAC */
			FUNC2(qdev, link, KERN_DEBUG, qdev->ndev,
				     "Enabling mac\n");
			FUNC12(qdev, 1);
		}

		qdev->port_link_state = LS_UP;
		FUNC3(qdev->ndev);
		FUNC0(qdev->ndev);
		FUNC1(qdev, link, qdev->ndev,
			   "Link is up at %d Mbps, %s duplex\n",
			   FUNC5(qdev),
			   FUNC6(qdev) ? "full" : "half");

	} else {	/* Remote error detected */

		if (FUNC16(QL_LINK_MASTER, &qdev->flags)) {
			FUNC2(qdev, link, KERN_DEBUG, qdev->ndev,
				     "Remote error detected. Calling ql_port_start()\n");
			/*
			 * ql_port_start() is shared code and needs
			 * to lock the PHY on it's own.
			 */
			FUNC15(qdev, QL_PHY_GIO_SEM_MASK);
			if (FUNC13(qdev))	/* Restart port */
				return -1;
			return 0;
		}
	}
	FUNC15(qdev, QL_PHY_GIO_SEM_MASK);
	return 0;
}