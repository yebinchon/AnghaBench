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
struct net_device {int /*<<< orphan*/  tstats; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_cache; } ;
struct geneve_dev {int /*<<< orphan*/  gro_cells; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct geneve_dev* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct geneve_dev *geneve = FUNC3(dev);

	FUNC0(&geneve->info.dst_cache);
	FUNC2(&geneve->gro_cells);
	FUNC1(dev->tstats);
}