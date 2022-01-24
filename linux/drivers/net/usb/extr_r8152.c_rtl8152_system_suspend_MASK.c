#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* down ) (struct r8152*) ;} ;
struct napi_struct {int dummy; } ;
struct r8152 {int /*<<< orphan*/  tx_tl; TYPE_1__ rtl_ops; int /*<<< orphan*/  schedule; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  flags; struct napi_struct napi; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct r8152 *tp)
{
	struct net_device *netdev = tp->netdev;

	FUNC4(netdev);

	if (FUNC5(netdev) && FUNC9(WORK_ENABLE, &tp->flags)) {
		struct napi_struct *napi = &tp->napi;

		FUNC1(WORK_ENABLE, &tp->flags);
		FUNC10(tp->intr_urb);
		FUNC7(&tp->tx_tl);
		FUNC2(napi);
		FUNC0(&tp->schedule);
		tp->rtl_ops.down(tp);
		FUNC3(napi);
		FUNC8(&tp->tx_tl);
	}

	return 0;
}