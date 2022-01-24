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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDMR ; 
 int EDMR_SRST_GETHER ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev)
{
	int cnt;

	for (cnt = 100; cnt > 0; cnt--) {
		if (!(FUNC2(ndev, EDMR) & EDMR_SRST_GETHER))
			return 0;
		FUNC0(1);
	}

	FUNC1(ndev, "Device reset failed\n");
	return -ETIMEDOUT;
}