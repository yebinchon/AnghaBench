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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(u8 *addr)
{
	int i;
	u8 mac_addr[ETH_ALEN];

	for (i = 0; i < ETH_ALEN; i++)
		mac_addr[i] = addr[ETH_ALEN - i - 1];
	FUNC0(addr, mac_addr);
}