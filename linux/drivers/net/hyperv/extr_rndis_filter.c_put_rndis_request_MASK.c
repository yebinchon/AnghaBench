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
struct rndis_request {int /*<<< orphan*/  list_ent; } ;
struct rndis_device {int /*<<< orphan*/  request_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rndis_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct rndis_device *dev,
			    struct rndis_request *req)
{
	unsigned long flags;

	FUNC2(&dev->request_lock, flags);
	FUNC1(&req->list_ent);
	FUNC3(&dev->request_lock, flags);

	FUNC0(req);
}