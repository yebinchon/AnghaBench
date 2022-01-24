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
struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vf_mbx {TYPE_1__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  acquire; } ;
struct TYPE_3__ {TYPE_2__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_PHYS_PORT_ID ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct bnx2x*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bnx2x*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct bnx2x *bp,
					 struct bnx2x_virtf *vf,
					 struct bnx2x_vf_mbx *mbx)
{
	/* Linux drivers which correctly set the doorbell size also
	 * send a physical port request
	 */
	if (FUNC0(bp, &mbx->msg->req,
				  CHANNEL_TLV_PHYS_PORT_ID))
		return 0;

	/* Issue does not exist in windows VMs */
	if (FUNC1(bp, &mbx->msg->req.acquire))
		return 0;

	return -EOPNOTSUPP;
}