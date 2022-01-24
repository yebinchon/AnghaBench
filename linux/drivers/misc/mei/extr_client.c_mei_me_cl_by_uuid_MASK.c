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
typedef  int /*<<< orphan*/  uuid_le ;
struct mei_me_client {int dummy; } ;
struct mei_device {int /*<<< orphan*/  me_clients_rwsem; } ;

/* Variables and functions */
 struct mei_me_client* FUNC0 (struct mei_device*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct mei_me_client *FUNC3(struct mei_device *dev,
					const uuid_le *uuid)
{
	struct mei_me_client *me_cl;

	FUNC1(&dev->me_clients_rwsem);
	me_cl = FUNC0(dev, uuid);
	FUNC2(&dev->me_clients_rwsem);

	return me_cl;
}