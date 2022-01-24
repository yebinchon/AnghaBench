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
typedef  int u16 ;
struct mv88e6060_priv {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  GLOBAL_MAC_01 ; 
 int /*<<< orphan*/  GLOBAL_MAC_23 ; 
 int /*<<< orphan*/  GLOBAL_MAC_45 ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (struct mv88e6060_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mv88e6060_priv *priv)
{
	u8 addr[ETH_ALEN];
	int ret;
	u16 val;

	FUNC0(addr);

	val = addr[0] << 8 | addr[1];

	/* The multicast bit is always transmitted as a zero, so the switch uses
	 * bit 8 for "DiffAddr", where 0 means all ports transmit the same SA.
	 */
	val &= 0xfeff;

	ret = FUNC1(priv, REG_GLOBAL, GLOBAL_MAC_01, val);
	if (ret)
		return ret;

	ret = FUNC1(priv, REG_GLOBAL, GLOBAL_MAC_23,
			(addr[2] << 8) | addr[3]);
	if (ret)
		return ret;

	return FUNC1(priv, REG_GLOBAL, GLOBAL_MAC_45,
			 (addr[4] << 8) | addr[5]);
}