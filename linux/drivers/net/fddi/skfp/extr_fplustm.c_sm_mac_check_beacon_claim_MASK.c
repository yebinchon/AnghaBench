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
struct s_smc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_IMSK2U ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*) ; 
 int mac_beacon_imsk2u ; 
 int mac_imsk2u ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 

void FUNC4(struct s_smc *smc)
{
	/* set formac IMSK : 0 enables irq */
	FUNC2(FUNC0(FM_IMSK2U),~(mac_imsk2u | mac_beacon_imsk2u)) ;
	/* the driver must receive the directed beacons */
	FUNC1(smc) ;
	FUNC3(smc) ;
}