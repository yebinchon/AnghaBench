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
typedef  int /*<<< orphan*/  u8 ;
struct ngene {int /*<<< orphan*/ * ngenetohost; int /*<<< orphan*/ * hosttongene; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * HOST_TO_NGENE ; 
 int /*<<< orphan*/ * NGENE_TO_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct ngene *dev)
{
	struct device *pdev = &dev->pci_dev->dev;
	u8 buf[8], *b;

	FUNC1(buf, HOST_TO_NGENE, 8);
	FUNC0(pdev, "host_to_ngene (%04x): %*ph\n", HOST_TO_NGENE, 8, buf);

	FUNC1(buf, NGENE_TO_HOST, 8);
	FUNC0(pdev, "ngene_to_host (%04x): %*ph\n", NGENE_TO_HOST, 8, buf);

	b = dev->hosttongene;
	FUNC0(pdev, "dev->hosttongene (%p): %*ph\n", b, 8, b);

	b = dev->ngenetohost;
	FUNC0(pdev, "dev->ngenetohost (%p): %*ph\n", b, 8, b);
}