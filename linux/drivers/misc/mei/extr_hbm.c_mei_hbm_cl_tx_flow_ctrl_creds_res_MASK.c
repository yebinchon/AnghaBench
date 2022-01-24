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
struct mei_device {int dummy; } ;
struct mei_cl {int /*<<< orphan*/  tx_flow_ctrl_creds; } ;
struct hbm_flow_control {int /*<<< orphan*/  host_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mei_device*,struct mei_cl*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct hbm_flow_control*) ; 
 struct mei_cl* FUNC2 (struct mei_device*,struct hbm_flow_control*) ; 

__attribute__((used)) static void FUNC3(struct mei_device *dev,
					       struct hbm_flow_control *fctrl)
{
	struct mei_cl *cl;

	if (!fctrl->host_addr) {
		/* single receive buffer */
		FUNC1(dev, fctrl);
		return;
	}

	cl = FUNC2(dev, fctrl);
	if (cl) {
		cl->tx_flow_ctrl_creds++;
		FUNC0(dev, cl, "flow control creds = %d.\n",
				cl->tx_flow_ctrl_creds);
	}
}