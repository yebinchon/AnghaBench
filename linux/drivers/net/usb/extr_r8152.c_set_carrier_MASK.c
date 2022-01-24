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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct r8152*) ;int /*<<< orphan*/  (* enable ) (struct r8152*) ;} ;
struct napi_struct {int dummy; } ;
struct r8152 {scalar_t__ tx_qlen; int /*<<< orphan*/  tx_tl; TYPE_1__ rtl_ops; int /*<<< orphan*/  tx_queue; struct napi_struct napi; int /*<<< orphan*/  flags; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int LINK_STATUS ; 
 int /*<<< orphan*/  RTL8152_SET_RX_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC12 (struct r8152*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC15 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct r8152 *tp)
{
	struct net_device *netdev = tp->netdev;
	struct napi_struct *napi = &tp->napi;
	u8 speed;

	speed = FUNC11(tp);

	if (speed & LINK_STATUS) {
		if (!FUNC5(netdev)) {
			tp->rtl_ops.enable(tp);
			FUNC9(netdev);
			FUNC2(napi);
			FUNC6(netdev);
			FUNC12(tp);
			FUNC1(RTL8152_SET_RX_MODE, &tp->flags);
			FUNC0(netdev);
			FUNC3(&tp->napi);
			FUNC10(netdev);
			FUNC7(tp, link, netdev, "carrier on\n");
		} else if (FUNC8(netdev) &&
			   FUNC13(&tp->tx_queue) < tp->tx_qlen) {
			FUNC10(netdev);
		}
	} else {
		if (FUNC5(netdev)) {
			FUNC4(netdev);
			FUNC16(&tp->tx_tl);
			FUNC2(napi);
			tp->rtl_ops.disable(tp);
			FUNC3(napi);
			FUNC17(&tp->tx_tl);
			FUNC7(tp, link, netdev, "carrier off\n");
		}
	}
}