#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_steering {TYPE_1__* sniffer_tx_root_ns; } ;
struct fs_prio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FS_FT_SNIFFER_TX ; 
 int FUNC0 (struct fs_prio*) ; 
 TYPE_1__* FUNC1 (struct mlx5_flow_steering*,int /*<<< orphan*/ ) ; 
 struct fs_prio* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mlx5_flow_steering *steering)
{
	struct fs_prio *prio;

	steering->sniffer_tx_root_ns = FUNC1(steering, FS_FT_SNIFFER_TX);
	if (!steering->sniffer_tx_root_ns)
		return -ENOMEM;

	/* Create single prio */
	prio = FUNC2(&steering->sniffer_tx_root_ns->ns, 0, 1);
	return FUNC0(prio);
}