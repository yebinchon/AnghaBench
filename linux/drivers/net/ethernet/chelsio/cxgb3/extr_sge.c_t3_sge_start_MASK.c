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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTROL ; 
 int /*<<< orphan*/  F_GLOBALENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct adapter *adap)
{
	FUNC0(adap, A_SG_CONTROL, F_GLOBALENABLE, F_GLOBALENABLE);
}