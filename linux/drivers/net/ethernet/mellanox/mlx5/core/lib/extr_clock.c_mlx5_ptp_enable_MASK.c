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
struct ptp_clock_request {int type; } ;
struct ptp_clock_info {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  PTP_CLK_REQ_EXTTS 130 
#define  PTP_CLK_REQ_PEROUT 129 
#define  PTP_CLK_REQ_PPS 128 
 int FUNC0 (struct ptp_clock_info*,struct ptp_clock_request*,int) ; 
 int FUNC1 (struct ptp_clock_info*,struct ptp_clock_request*,int) ; 
 int FUNC2 (struct ptp_clock_info*,struct ptp_clock_request*,int) ; 

__attribute__((used)) static int FUNC3(struct ptp_clock_info *ptp,
			   struct ptp_clock_request *rq,
			   int on)
{
	switch (rq->type) {
	case PTP_CLK_REQ_EXTTS:
		return FUNC0(ptp, rq, on);
	case PTP_CLK_REQ_PEROUT:
		return FUNC1(ptp, rq, on);
	case PTP_CLK_REQ_PPS:
		return FUNC2(ptp, rq, on);
	default:
		return -EOPNOTSUPP;
	}
	return 0;
}