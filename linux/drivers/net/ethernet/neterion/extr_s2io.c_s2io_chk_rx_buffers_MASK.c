#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s2io_nic {int dummy; } ;
struct ring_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INFO_DBG ; 
 int /*<<< orphan*/  FUNC1 (struct s2io_nic*,struct ring_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct s2io_nic *nic, struct ring_info *ring)
{
	if (FUNC1(nic, ring, 0) == -ENOMEM) {
		FUNC0(INFO_DBG, "%s: Out of memory in Rx Intr!!\n",
			  ring->dev->name);
	}
	return 0;
}