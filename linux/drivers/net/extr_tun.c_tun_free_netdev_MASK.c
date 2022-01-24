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
struct tun_struct {int /*<<< orphan*/  filter_prog; int /*<<< orphan*/  steering_prog; int /*<<< orphan*/  security; int /*<<< orphan*/  pcpu_stats; int /*<<< orphan*/  disabled; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tun_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tun_struct* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tun_struct*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct tun_struct *tun = FUNC4(dev);

	FUNC0(!(FUNC3(&tun->disabled)));
	FUNC2(tun->pcpu_stats);
	FUNC6(tun);
	FUNC5(tun->security);
	FUNC1(tun, &tun->steering_prog, NULL);
	FUNC1(tun, &tun->filter_prog, NULL);
}