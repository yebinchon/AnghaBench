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
typedef  int u8 ;
typedef  int u32 ;
struct netdata_local {int /*<<< orphan*/  net_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct netdata_local *pldat, u8 *mac)
{
	u32 tmp;

	/* Get station address */
	tmp = FUNC3(FUNC2(pldat->net_base));
	mac[0] = tmp & 0xFF;
	mac[1] = tmp >> 8;
	tmp = FUNC3(FUNC1(pldat->net_base));
	mac[2] = tmp & 0xFF;
	mac[3] = tmp >> 8;
	tmp = FUNC3(FUNC0(pldat->net_base));
	mac[4] = tmp & 0xFF;
	mac[5] = tmp >> 8;
}