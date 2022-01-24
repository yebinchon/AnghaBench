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
typedef  int /*<<< orphan*/  u8 ;
struct mei_me_client {int dummy; } ;
struct mei_device {int /*<<< orphan*/  me_clients_rwsem; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct mei_me_client* FUNC0 (struct mei_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_me_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mei_device *dev, const uuid_le *uuid, u8 id)
{
	struct mei_me_client *me_cl;

	FUNC2(dev->dev, "remove %pUl %d\n", uuid, id);

	FUNC3(&dev->me_clients_rwsem);
	me_cl = FUNC0(dev, uuid, id);
	FUNC1(dev, me_cl);
	FUNC4(&dev->me_clients_rwsem);
}