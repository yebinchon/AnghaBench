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
struct ptp_clock_request {int type; int /*<<< orphan*/  perout; int /*<<< orphan*/  extts; } ;
struct ptp_clock_info {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  PTP_CLK_REQ_EXTTS 129 
#define  PTP_CLK_REQ_PEROUT 128 
 int FUNC0 (struct ptp_clock_info*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct ptp_clock_info*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct ptp_clock_info *ptp,
			   struct ptp_clock_request *req, int on)
{
	switch (req->type) {
	case PTP_CLK_REQ_EXTTS:
		return FUNC0(ptp, &req->extts, on);
	case PTP_CLK_REQ_PEROUT:
		return FUNC1(ptp, &req->perout, on);
	default:
		return -EOPNOTSUPP;
	}
}