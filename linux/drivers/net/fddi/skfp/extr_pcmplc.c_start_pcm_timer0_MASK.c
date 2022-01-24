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
typedef  int /*<<< orphan*/  u_long ;
struct s_smc {int dummy; } ;
struct s_phy {scalar_t__ np; int /*<<< orphan*/  pcm_timer0; int /*<<< orphan*/  timer0_exp; } ;

/* Variables and functions */
 scalar_t__ EVENT_PCM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s_smc *smc, u_long value, int event,
			     struct s_phy *phy)
{
	phy->timer0_exp = FALSE ;       /* clear timer event flag */
	FUNC1(smc,&phy->pcm_timer0,value,
		FUNC0(EVENT_PCM+phy->np,event)) ;
}