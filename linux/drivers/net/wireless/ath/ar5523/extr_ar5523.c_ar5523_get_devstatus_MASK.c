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
struct ar5523 {int /*<<< orphan*/ * serial; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ST_MAC_ADDR ; 
 int /*<<< orphan*/  ST_SERIAL_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*) ; 
 int FUNC2 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ar5523 *ar)
{
	u8 macaddr[ETH_ALEN];
	int error;

	/* retrieve MAC address */
	error = FUNC2(ar, ST_MAC_ADDR, macaddr, ETH_ALEN);
	if (error) {
		FUNC1(ar, "could not read MAC address\n");
		return error;
	}

	FUNC0(ar->hw, macaddr);

	error = FUNC2(ar, ST_SERIAL_NUMBER,
	    &ar->serial[0], sizeof(ar->serial));
	if (error) {
		FUNC1(ar, "could not read device serial number\n");
		return error;
	}
	return 0;
}