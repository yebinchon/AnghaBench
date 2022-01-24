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
typedef  int u16 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE4 ; 
 int /*<<< orphan*/  PTP_CTL ; 
 int /*<<< orphan*/  PTP_TDR ; 
 int /*<<< orphan*/  FUNC0 (int,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(int bc, struct phy_device *dev,
		     const struct timespec64 *ts, u16 cmd)
{
	FUNC0(bc, dev, PAGE4, PTP_TDR, ts->tv_nsec & 0xffff);/* ns[15:0]  */
	FUNC0(bc, dev, PAGE4, PTP_TDR, ts->tv_nsec >> 16);   /* ns[31:16] */
	FUNC0(bc, dev, PAGE4, PTP_TDR, ts->tv_sec & 0xffff); /* sec[15:0] */
	FUNC0(bc, dev, PAGE4, PTP_TDR, ts->tv_sec >> 16);    /* sec[31:16]*/

	FUNC0(bc, dev, PAGE4, PTP_CTL, cmd);

	return 0;
}