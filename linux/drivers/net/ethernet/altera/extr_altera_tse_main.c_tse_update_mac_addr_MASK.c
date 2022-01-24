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
struct altera_tse_private {int /*<<< orphan*/  mac_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_addr_0 ; 
 int /*<<< orphan*/  mac_addr_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct altera_tse_private *priv, u8 *addr)
{
	u32 msb;
	u32 lsb;

	msb = (addr[3] << 24) | (addr[2] << 16) | (addr[1] << 8) | addr[0];
	lsb = ((addr[5] << 8) | addr[4]) & 0xffff;

	/* Set primary MAC address */
	FUNC0(msb, priv->mac_dev, FUNC1(mac_addr_0));
	FUNC0(lsb, priv->mac_dev, FUNC1(mac_addr_1));
}