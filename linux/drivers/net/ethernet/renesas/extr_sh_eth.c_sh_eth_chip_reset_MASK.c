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
struct sh_eth_private {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARSTR ; 
 int /*<<< orphan*/  ARSTR_ARST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sh_eth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_eth_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC1(ndev);

	/* reset device */
	FUNC2(mdp, ARSTR_ARST, ARSTR);
	FUNC0(1);
}