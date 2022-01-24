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
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EXTRA ; 
 int /*<<< orphan*/  HFA384X_CMDCODE_INQUIRE ; 
 int /*<<< orphan*/  HFA384X_INFO_COMMTALLIES ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	static unsigned long last_inquire = 0;

	FUNC0(DEBUG_EXTRA, "%s: INFDROP event\n", dev->name);

	/* some firmware versions seem to get stuck with
	 * full CommTallies in high traffic load cases; every
	 * packet will then cause INFDROP event and CommTallies
	 * info frame will not be sent automatically. Try to
	 * get out of this state by inquiring CommTallies. */
	if (!last_inquire || FUNC2(jiffies, last_inquire + HZ)) {
		FUNC1(dev, HFA384X_CMDCODE_INQUIRE,
				     HFA384X_INFO_COMMTALLIES, NULL, 0);
		last_inquire = jiffies;
	}
}