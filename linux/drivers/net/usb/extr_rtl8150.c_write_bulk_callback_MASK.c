#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; TYPE_1__* dev; TYPE_2__* context; } ;
struct TYPE_7__ {TYPE_3__* netdev; int /*<<< orphan*/  tx_skb; } ;
typedef  TYPE_2__ rtl8150_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	rtl8150_t *dev;
	int status = urb->status;

	dev = urb->context;
	if (!dev)
		return;
	FUNC1(dev->tx_skb);
	if (!FUNC2(dev->netdev))
		return;
	if (status)
		FUNC0(&urb->dev->dev, "%s: Tx status %d\n",
			 dev->netdev->name, status);
	FUNC3(dev->netdev);
	FUNC4(dev->netdev);
}