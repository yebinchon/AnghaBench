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
struct mei_device {int open_handle_count; int /*<<< orphan*/  host_clients_map; int /*<<< orphan*/  file_list; int /*<<< orphan*/  dev; } ;
struct mei_cl {int host_client_id; int /*<<< orphan*/  state; int /*<<< orphan*/  link; struct mei_device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMFILE ; 
 int MEI_CLIENTS_MAX ; 
 int /*<<< orphan*/  MEI_FILE_INITIALIZING ; 
 int MEI_MAX_OPEN_HANDLE_COUNT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct mei_cl *cl)
{
	struct mei_device *dev;
	int id;

	if (FUNC0(!cl || !cl->dev))
		return -EINVAL;

	dev = cl->dev;

	id = FUNC3(dev->host_clients_map, MEI_CLIENTS_MAX);
	if (id >= MEI_CLIENTS_MAX) {
		FUNC2(dev->dev, "id exceeded %d", MEI_CLIENTS_MAX);
		return -EMFILE;
	}

	if (dev->open_handle_count >= MEI_MAX_OPEN_HANDLE_COUNT) {
		FUNC2(dev->dev, "open_handle_count exceeded %d",
			MEI_MAX_OPEN_HANDLE_COUNT);
		return -EMFILE;
	}

	dev->open_handle_count++;

	cl->host_client_id = id;
	FUNC4(&cl->link, &dev->file_list);

	FUNC5(id, dev->host_clients_map);

	cl->state = MEI_FILE_INITIALIZING;

	FUNC1(dev, cl, "link cl\n");
	return 0;
}