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
struct bpqdev {int /*<<< orphan*/  bpq_list; int /*<<< orphan*/  acpt_addr; int /*<<< orphan*/  dest_addr; struct net_device* axdev; struct net_device* ethdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpq_devices ; 
 int /*<<< orphan*/  bpq_setup ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bpqdev* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *edev)
{
	int err;
	struct net_device *ndev;
	struct bpqdev *bpq;

	ndev = FUNC0(sizeof(struct bpqdev), "bpq%d", NET_NAME_UNKNOWN,
			    bpq_setup);
	if (!ndev)
		return -ENOMEM;

		
	bpq = FUNC6(ndev);
	FUNC1(edev);
	bpq->ethdev = edev;
	bpq->axdev = ndev;

	FUNC3(bpq->dest_addr);
	FUNC3(bpq->acpt_addr);

	err = FUNC7(ndev);
	if (err)
		goto error;

	/* List protected by RTNL */
	FUNC5(&bpq->bpq_list, &bpq_devices);
	return 0;

 error:
	FUNC2(edev);
	FUNC4(ndev);
	return err;
	
}