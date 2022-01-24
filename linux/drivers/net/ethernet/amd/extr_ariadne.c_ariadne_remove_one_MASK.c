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
struct zorro_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  mem_start; int /*<<< orphan*/  base_addr; } ;
struct Am79C960 {int dummy; } ;

/* Variables and functions */
 int ARIADNE_RAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct zorro_dev*) ; 

__attribute__((used)) static void FUNC5(struct zorro_dev *z)
{
	struct net_device *dev = FUNC4(z);

	FUNC3(dev);
	FUNC2(FUNC0(dev->base_addr), sizeof(struct Am79C960));
	FUNC2(FUNC0(dev->mem_start), ARIADNE_RAM_SIZE);
	FUNC1(dev);
}