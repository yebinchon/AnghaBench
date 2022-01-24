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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct enic {int /*<<< orphan*/  devcmd_lock; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (struct enic*,int /*<<< orphan*/ ) ; 
 struct enic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_device *netdev, __be16 proto, u16 vid)
{
	struct enic *enic = FUNC1(netdev);
	int err;

	FUNC2(&enic->devcmd_lock);
	err = FUNC0(enic, vid);
	FUNC3(&enic->devcmd_lock);

	return err;
}