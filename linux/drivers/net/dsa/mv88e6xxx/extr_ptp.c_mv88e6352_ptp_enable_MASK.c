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
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  PTP_CLK_REQ_EXTTS 128 
 int FUNC0 (struct mv88e6xxx_chip*,struct ptp_clock_request*,int) ; 
 struct mv88e6xxx_chip* FUNC1 (struct ptp_clock_info*) ; 

__attribute__((used)) static int FUNC2(struct ptp_clock_info *ptp,
				struct ptp_clock_request *rq, int on)
{
	struct mv88e6xxx_chip *chip = FUNC1(ptp);

	switch (rq->type) {
	case PTP_CLK_REQ_EXTTS:
		return FUNC0(chip, rq, on);
	default:
		return -EOPNOTSUPP;
	}
}