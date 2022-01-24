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
struct tun_struct {scalar_t__ ageing_time; int /*<<< orphan*/  flow_gc_timer; int /*<<< orphan*/ * flows; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TUN_FLOW_EXPIRE ; 
 int TUN_NUM_FLOW_ENTRIES ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tun_flow_cleanup ; 

__attribute__((used)) static void FUNC4(struct tun_struct *tun)
{
	int i;

	for (i = 0; i < TUN_NUM_FLOW_ENTRIES; i++)
		FUNC0(&tun->flows[i]);

	tun->ageing_time = TUN_FLOW_EXPIRE;
	FUNC3(&tun->flow_gc_timer, tun_flow_cleanup, 0);
	FUNC1(&tun->flow_gc_timer,
		  FUNC2(jiffies + tun->ageing_time));
}