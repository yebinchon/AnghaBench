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
struct ssb_device {int /*<<< orphan*/  bus; } ;
struct net_device {int dummy; } ;
struct b44 {int flags; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int B44_FLAG_EXTERNAL_PHY ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct b44* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ssb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct ssb_device *sdev)
{
	struct net_device *dev = FUNC6(sdev);
	struct b44 *bp = FUNC2(dev);

	FUNC9(dev);
	if (bp->flags & B44_FLAG_EXTERNAL_PHY)
		FUNC0(bp);
	FUNC5(sdev, 0);
	FUNC4(sdev->bus);
	FUNC3(&bp->napi);
	FUNC1(dev);
	FUNC7(sdev, PCI_D3hot);
	FUNC8(sdev, NULL);
}