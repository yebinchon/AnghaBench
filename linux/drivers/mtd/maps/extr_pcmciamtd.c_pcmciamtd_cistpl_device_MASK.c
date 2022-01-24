#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tuple_t ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct pcmciamtd_dev {TYPE_1__ pcmcia_map; } ;
struct pcmcia_device {int dummy; } ;
struct TYPE_8__ {int ndev; TYPE_2__* dev; } ;
typedef  TYPE_3__ cistpl_device_t ;
struct TYPE_9__ {TYPE_3__ device; } ;
typedef  TYPE_4__ cisparse_t ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  speed; int /*<<< orphan*/  wp; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_device *p_dev,
				tuple_t *tuple,
				void *priv_data)
{
	struct pcmciamtd_dev *dev = priv_data;
	cisparse_t parse;
	cistpl_device_t *t = &parse.device;
	int i;

	if (FUNC0(tuple, &parse))
		return -EINVAL;

	FUNC1("Common memory:\n");
	dev->pcmcia_map.size = t->dev[0].size;
	/* from here on: DEBUG only */
	for (i = 0; i < t->ndev; i++) {
		FUNC1("Region %d, type = %u\n", i, t->dev[i].type);
		FUNC1("Region %d, wp = %u\n", i, t->dev[i].wp);
		FUNC1("Region %d, speed = %u ns\n", i, t->dev[i].speed);
		FUNC1("Region %d, size = %u bytes\n", i, t->dev[i].size);
	}
	return 0;
}