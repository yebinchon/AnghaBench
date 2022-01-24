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
struct pvr2_dvb_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pvr2_dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_dvb_adapter*) ; 

__attribute__((used)) static int FUNC2(struct pvr2_dvb_adapter *adap)
{
	int ret = FUNC0(adap);
	if (ret < 0) FUNC1(adap);
	return ret;
}