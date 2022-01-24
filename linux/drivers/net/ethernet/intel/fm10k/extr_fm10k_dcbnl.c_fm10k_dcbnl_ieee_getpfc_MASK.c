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
struct net_device {int dummy; } ;
struct ieee_pfc {int /*<<< orphan*/  pfc_en; int /*<<< orphan*/  pfc_cap; } ;
struct fm10k_intfc {int /*<<< orphan*/  pfc_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE_8021QAZ_MAX_TCS ; 
 struct fm10k_intfc* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev, struct ieee_pfc *pfc)
{
	struct fm10k_intfc *interface = FUNC0(dev);

	/* record flow control max count and state of TCs */
	pfc->pfc_cap = IEEE_8021QAZ_MAX_TCS;
	pfc->pfc_en = interface->pfc_en;

	return 0;
}