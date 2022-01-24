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
typedef  scalar_t__ u8 ;
struct chelsio_vpd_t {scalar_t__* mac_base_address; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct chelsio_vpd_t*) ; 

__attribute__((used)) static int FUNC2(adapter_t *adapter, int index, u8 mac_addr[])
{
	struct chelsio_vpd_t vpd;

	if (FUNC1(adapter, &vpd))
		return 1;
	FUNC0(mac_addr, vpd.mac_base_address, 5);
	mac_addr[5] = vpd.mac_base_address[5] + index;
	return 0;
}