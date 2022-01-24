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
typedef  scalar_t__ u64 ;
struct tx_ring_info {int /*<<< orphan*/  tx_channel; } ;
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,struct tx_ring_info*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct niu *np, struct tx_ring_info *rp)
{
	u64 cs, logh, logl;

	cs = FUNC5(FUNC0(rp->tx_channel));
	logh = FUNC5(FUNC1(rp->tx_channel));
	logl = FUNC5(FUNC2(rp->tx_channel));

	FUNC3(np->dev, "TX channel %u error, cs[%llx] logh[%llx] logl[%llx]\n",
		   rp->tx_channel,
		   (unsigned long long)cs,
		   (unsigned long long)logh,
		   (unsigned long long)logl);

	FUNC4(np, rp, cs);

	return -ENODEV;
}