#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rocker_port {int /*<<< orphan*/  rx_ring; TYPE_2__* dev; struct rocker* rocker; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;
struct napi_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct napi_struct*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int FUNC3 (struct rocker_desc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker_desc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct rocker const*,int /*<<< orphan*/ *,struct rocker_desc_info*) ; 
 struct rocker_desc_info* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rocker const*,int /*<<< orphan*/ *,int) ; 
 struct rocker_port* FUNC8 (struct napi_struct*) ; 
 int FUNC9 (struct rocker const*,struct rocker_port*,struct rocker_desc_info*) ; 

__attribute__((used)) static int FUNC10(struct napi_struct *napi, int budget)
{
	struct rocker_port *rocker_port = FUNC8(napi);
	const struct rocker *rocker = rocker_port->rocker;
	struct rocker_desc_info *desc_info;
	u32 credits = 0;
	int err;

	/* Process rx descriptors */
	while (credits < budget &&
	       (desc_info = FUNC6(&rocker_port->rx_ring))) {
		err = FUNC3(desc_info);
		if (err) {
			if (FUNC1())
				FUNC2(rocker_port->dev, "rx desc received with err %d\n",
					   err);
		} else {
			err = FUNC9(rocker, rocker_port,
						  desc_info);
			if (err && FUNC1())
				FUNC2(rocker_port->dev, "rx processing failed with err %d\n",
					   err);
		}
		if (err)
			rocker_port->dev->stats.rx_errors++;

		FUNC4(desc_info);
		FUNC5(rocker, &rocker_port->rx_ring, desc_info);
		credits++;
	}

	if (credits < budget)
		FUNC0(napi, credits);

	FUNC7(rocker, &rocker_port->rx_ring, credits);

	return credits;
}