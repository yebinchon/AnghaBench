#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* platform_data; } ;
struct mcp {TYPE_1__ attached_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2(struct mcp *mcp, void *pdata)
{
	mcp->attached_device.platform_data = pdata;
	FUNC0(&mcp->attached_device, "mcp0");
	return FUNC1(&mcp->attached_device);
}