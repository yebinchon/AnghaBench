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
struct st_proto_s {int chnl_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  read_queue; } ;
struct TYPE_4__ {scalar_t__ freq; TYPE_1__ rds; } ;
struct fmdev {int /*<<< orphan*/  flag; TYPE_2__ rx; int /*<<< orphan*/ * resp_comp; int /*<<< orphan*/  rx_q; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  rx_task; int /*<<< orphan*/  tx_task; } ;
typedef  int /*<<< orphan*/  fm_st_proto ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CORE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct st_proto_s*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct st_proto_s*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct fmdev *fmdev)
{
	static struct st_proto_s fm_st_proto;
	int ret;

	if (!FUNC7(FM_CORE_READY, &fmdev->flag)) {
		FUNC1("FM Core is already down\n");
		return 0;
	}
	/* Service pending read */
	FUNC8(&fmdev->rx.rds.read_queue);

	FUNC6(&fmdev->tx_task);
	FUNC6(&fmdev->rx_task);

	FUNC4(&fmdev->tx_q);
	FUNC4(&fmdev->rx_q);

	fmdev->resp_comp = NULL;
	fmdev->rx.freq = 0;

	FUNC3(&fm_st_proto, 0, sizeof(fm_st_proto));
	fm_st_proto.chnl_id = 0x08;

	ret = FUNC5(&fm_st_proto);

	if (ret < 0)
		FUNC2("Failed to de-register FM from ST %d\n", ret);
	else
		FUNC1("Successfully unregistered from ST\n");

	FUNC0(FM_CORE_READY, &fmdev->flag);
	return ret;
}