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
struct mwifiex_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGURATION_REG ; 
 int /*<<< orphan*/  EVENT ; 
 int /*<<< orphan*/  HOST_POWER_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_adapter *adapter)
{
	FUNC0(adapter, EVENT,
		    "event: wakeup device...\n");

	return FUNC1(adapter, CONFIGURATION_REG, HOST_POWER_UP);
}