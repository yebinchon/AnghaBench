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
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP_RSS_PF_MSK_A ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

u32 FUNC1(struct adapter *adapter, bool sleep_ok)
{
	u32 pfmask;

	FUNC0(adapter, &pfmask, 1, TP_RSS_PF_MSK_A, sleep_ok);
	return pfmask;
}