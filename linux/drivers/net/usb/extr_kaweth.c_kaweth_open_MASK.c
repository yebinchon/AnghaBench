#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct kaweth_device {int opened; TYPE_3__* intf; int /*<<< orphan*/  rx_urb; TYPE_1__* irq_urb; int /*<<< orphan*/  intbufferhandle; int /*<<< orphan*/  intbuffer; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTBUFFERSIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  int_callback ; 
 int /*<<< orphan*/  FUNC1 (struct kaweth_device*) ; 
 int FUNC2 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 struct kaweth_device* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kaweth_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC3(net);
	int res;

	res = FUNC5(kaweth->intf);
	if (res) {
		FUNC0(&kaweth->intf->dev, "Interface cannot be resumed.\n");
		return -EIO;
	}
	res = FUNC2(kaweth, GFP_KERNEL);
	if (res)
		goto err_out;

	FUNC7(
		kaweth->irq_urb,
		kaweth->dev,
		FUNC9(kaweth->dev, 3),
		kaweth->intbuffer,
		INTBUFFERSIZE,
		int_callback,
		kaweth,
		250); /* overriding the descriptor */
	kaweth->irq_urb->transfer_dma = kaweth->intbufferhandle;
	kaweth->irq_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	res = FUNC10(kaweth->irq_urb, GFP_KERNEL);
	if (res) {
		FUNC8(kaweth->rx_urb);
		goto err_out;
	}
	kaweth->opened = 1;

	FUNC4(net);

	FUNC1(kaweth);
	return 0;

err_out:
	FUNC6(kaweth->intf);
	return -EIO;
}