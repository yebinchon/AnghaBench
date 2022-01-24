#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rx_mode; } ;
struct TYPE_4__ {TYPE_1__ fp; } ;
struct s_smc {TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FM_ADDRX ; 
 int /*<<< orphan*/  FM_MDREG1 ; 
 int FM_MMODE ; 
 int FM_MONLINE ; 
 int FM_SELRA ; 
 int MDR1INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 

__attribute__((used)) static void FUNC3(struct s_smc *smc)
{
	FUNC2(smc) ;
	FUNC1(FUNC0(FM_MDREG1),FM_MONLINE | FM_SELRA | MDR1INIT |
		smc->hw.fp.rx_mode, FM_MMODE | FM_SELRA | FM_ADDRX) ;
}