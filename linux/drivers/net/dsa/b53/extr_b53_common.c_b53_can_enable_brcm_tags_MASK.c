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
struct dsa_switch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC2(struct dsa_switch *ds, int port)
{
	bool ret = FUNC0(ds, port);

	if (!ret)
		FUNC1(ds->dev, "Port %d is not Broadcom tag capable\n",
			 port);
	return ret;
}