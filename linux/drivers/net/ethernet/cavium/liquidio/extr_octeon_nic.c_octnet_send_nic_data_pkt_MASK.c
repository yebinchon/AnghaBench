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
struct octnic_data_pkt {int /*<<< orphan*/  reqtype; int /*<<< orphan*/  datasize; int /*<<< orphan*/  buf; int /*<<< orphan*/  cmd; int /*<<< orphan*/  q_no; } ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct octeon_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct octeon_device *oct,
			     struct octnic_data_pkt *ndata,
			     int xmit_more)
{
	int ring_doorbell = !xmit_more;

	return FUNC0(oct, ndata->q_no, ring_doorbell, &ndata->cmd,
				   ndata->buf, ndata->datasize,
				   ndata->reqtype);
}