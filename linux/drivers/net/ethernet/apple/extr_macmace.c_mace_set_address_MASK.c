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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct mace_data {struct mace* mace; } ;
struct mace {int /*<<< orphan*/  maccc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct mace_data* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *addr)
{
	struct mace_data *mp = FUNC3(dev);
	volatile struct mace *mb = mp->mace;
	unsigned long flags;
	u8 maccc;

	FUNC2(flags);

	maccc = mb->maccc;

	FUNC0(dev, addr);

	mb->maccc = maccc;

	FUNC1(flags);

	return 0;
}