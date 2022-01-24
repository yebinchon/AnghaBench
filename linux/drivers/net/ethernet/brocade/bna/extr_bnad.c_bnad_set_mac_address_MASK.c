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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct bnad {int /*<<< orphan*/  bna_lock; } ;

/* Variables and functions */
 int FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnad* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct net_device *netdev, void *addr)
{
	int err;
	struct bnad *bnad = FUNC2(netdev);
	struct sockaddr *sa = (struct sockaddr *)addr;
	unsigned long flags;

	FUNC3(&bnad->bna_lock, flags);

	err = FUNC0(bnad, sa->sa_data);
	if (!err)
		FUNC1(netdev->dev_addr, sa->sa_data);

	FUNC4(&bnad->bna_lock, flags);

	return err;
}