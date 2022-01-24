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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {struct net_device* dev; } ;
struct octeon_soft_command {int /*<<< orphan*/  iq_no; int /*<<< orphan*/  datasize; int /*<<< orphan*/  dmadptr; struct sk_buff* ctxptr; } ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct octeon_soft_command*) ; 
 scalar_t__ FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct octeon_device *oct,
				u32 status, void *buf)
{
	struct octeon_soft_command *sc = (struct octeon_soft_command *)buf;
	struct sk_buff *skb = sc->ctxptr;
	struct net_device *ndev = skb->dev;
	u32 iq_no;

	FUNC1(&oct->pci_dev->dev, sc->dmadptr,
			 sc->datasize, DMA_TO_DEVICE);
	FUNC0(skb);
	iq_no = sc->iq_no;
	FUNC4(oct, sc);

	if (FUNC5(oct, iq_no))
		return;

	if (FUNC2(ndev))
		FUNC3(ndev);
}