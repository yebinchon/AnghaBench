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
typedef  scalar_t__ u16 ;
struct sh_eth_private {scalar_t__ tsu_addr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 struct sh_eth_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, u16 offset,
				  const u8 *addr)
{
	struct sh_eth_private *mdp = FUNC1(ndev);
	u32 val;

	val = addr[0] << 24 | addr[1] << 16 | addr[2] << 8 | addr[3];
	FUNC0(val, mdp->tsu_addr + offset);
	if (FUNC2(ndev) < 0)
		return -EBUSY;

	val = addr[4] << 8 | addr[5];
	FUNC0(val, mdp->tsu_addr + offset + 4);
	if (FUNC2(ndev) < 0)
		return -EBUSY;

	return 0;
}