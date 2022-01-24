#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  node; int /*<<< orphan*/  asd; } ;
struct atmel_isi {TYPE_2__ notifier; TYPE_6__* dev; int /*<<< orphan*/  v4l2_dev; TYPE_1__ entity; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  isi_graph_notify_ops ; 
 int FUNC1 (struct atmel_isi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct atmel_isi *isi)
{
	int ret;

	/* Parse the graph to extract a list of subdevice DT nodes. */
	ret = FUNC1(isi, isi->dev->of_node);
	if (ret < 0) {
		FUNC0(isi->dev, "Graph parsing failed\n");
		return ret;
	}

	FUNC5(&isi->notifier);

	ret = FUNC3(&isi->notifier, &isi->entity.asd);
	if (ret) {
		FUNC2(isi->entity.node);
		return ret;
	}

	isi->notifier.ops = &isi_graph_notify_ops;

	ret = FUNC6(&isi->v4l2_dev, &isi->notifier);
	if (ret < 0) {
		FUNC0(isi->dev, "Notifier registration failed\n");
		FUNC4(&isi->notifier);
		return ret;
	}

	return 0;
}