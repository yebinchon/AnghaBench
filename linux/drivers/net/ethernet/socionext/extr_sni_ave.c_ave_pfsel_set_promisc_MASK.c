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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  AVE_PFMBIT_MASK ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  AVE_PFMBYTE_MASK0 ; 
 int /*<<< orphan*/  AVE_PFMBYTE_MASK1 ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 unsigned int AVE_PF_SIZE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,unsigned int) ; 
 struct ave_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct net_device *ndev,
				  unsigned int entry, u32 rxring)
{
	struct ave_private *priv = FUNC6(ndev);

	if (FUNC3(entry > AVE_PF_SIZE))
		return;

	FUNC5(ndev, entry);

	/* set byte mask */
	FUNC7(AVE_PFMBYTE_MASK0, priv->base + FUNC1(entry));
	FUNC7(AVE_PFMBYTE_MASK1, priv->base + FUNC1(entry) + 4);

	/* set bit mask filter */
	FUNC7(AVE_PFMBIT_MASK, priv->base + FUNC0(entry));

	/* set selector to rxring */
	FUNC7(rxring, priv->base + FUNC2(entry));

	FUNC4(ndev, entry);
}