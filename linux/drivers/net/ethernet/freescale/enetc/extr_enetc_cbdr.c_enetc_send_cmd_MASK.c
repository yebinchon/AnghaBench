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
struct enetc_cbdr {int next_to_use; int bd_count; int /*<<< orphan*/  cir; int /*<<< orphan*/  pir; int /*<<< orphan*/  bd_base; } ;
struct enetc_si {struct enetc_cbdr cbd_ring; } ;
struct enetc_cbd {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 struct enetc_cbd* FUNC0 (struct enetc_cbdr,int) ; 
 int ENETC_CBDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_cbdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_si*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct enetc_si *si, struct enetc_cbd *cbd)
{
	struct enetc_cbdr *ring = &si->cbd_ring;
	int timeout = ENETC_CBDR_TIMEOUT;
	struct enetc_cbd *dest_cbd;
	int i;

	if (FUNC6(!ring->bd_base))
		return -EIO;

	if (FUNC6(!FUNC1(ring)))
		FUNC2(si);

	i = ring->next_to_use;
	dest_cbd = FUNC0(*ring, i);

	/* copy command to the ring */
	*dest_cbd = *cbd;
	i = (i + 1) % ring->bd_count;

	ring->next_to_use = i;
	/* let H/W know BD ring has been updated */
	FUNC4(ring->pir, i);

	do {
		if (FUNC3(ring->cir) == i)
			break;
		FUNC5(10); /* cannot sleep, rtnl_lock() */
		timeout -= 10;
	} while (timeout);

	if (!timeout)
		return -EBUSY;

	FUNC2(si);

	return 0;
}