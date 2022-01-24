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
struct TYPE_2__ {int /*<<< orphan*/  (* autosuspend_en ) (struct r8152*,int) ;int /*<<< orphan*/  (* disable ) (struct r8152*) ;} ;
struct napi_struct {int dummy; } ;
struct r8152 {int /*<<< orphan*/  flags; TYPE_1__ rtl_ops; int /*<<< orphan*/  intr_urb; struct napi_struct napi; int /*<<< orphan*/  rx_done; struct net_device* netdev; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int IFF_UP ; 
 int LINK_STATUS ; 
 int /*<<< orphan*/  SELECTIVE_SUSPEND ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int FUNC9 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC10 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC15 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct r8152 *tp)
{
	struct net_device *netdev = tp->netdev;

	if (FUNC8(netdev) && netdev->flags & IFF_UP) {
		struct napi_struct *napi = &tp->napi;

		tp->rtl_ops.autosuspend_en(tp, false);
		FUNC2(napi);
		FUNC11(WORK_ENABLE, &tp->flags);

		if (FUNC6(netdev)) {
			if (FUNC9(tp) & LINK_STATUS) {
				FUNC10(tp);
			} else {
				FUNC5(netdev);
				tp->rtl_ops.disable(tp);
				FUNC7(tp, link, netdev, "linking down\n");
			}
		}

		FUNC3(napi);
		FUNC0(SELECTIVE_SUSPEND, &tp->flags);
		FUNC12();

		if (!FUNC1(&tp->rx_done))
			FUNC4(&tp->napi);

		FUNC16(tp->intr_urb, GFP_NOIO);
	} else {
		if (netdev->flags & IFF_UP)
			tp->rtl_ops.autosuspend_en(tp, false);

		FUNC0(SELECTIVE_SUSPEND, &tp->flags);
	}

	return 0;
}