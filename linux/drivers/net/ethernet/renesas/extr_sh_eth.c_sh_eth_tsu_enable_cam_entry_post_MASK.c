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
typedef  int u32 ;
struct sh_eth_private {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int TSU_POST1 ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct sh_eth_private*,int) ; 
 int FUNC2 (struct sh_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_eth_private*,int,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev,
					     int entry)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	int reg = TSU_POST1 + entry / 8;
	u32 tmp;

	tmp = FUNC2(mdp, reg);
	FUNC3(mdp, tmp | FUNC1(mdp, entry), reg);
}