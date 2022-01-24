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
typedef  int /*<<< orphan*/  u8 ;
struct slave {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct slave*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct slave *slave1, struct slave *slave2)
{
	u8 tmp_mac_addr[MAX_ADDR_LEN];

	FUNC1(tmp_mac_addr, slave1->dev->dev_addr,
			  slave1->dev->addr_len);
	FUNC0(slave1, slave2->dev->dev_addr,
			       slave2->dev->addr_len);
	FUNC0(slave2, tmp_mac_addr,
			       slave1->dev->addr_len);

}