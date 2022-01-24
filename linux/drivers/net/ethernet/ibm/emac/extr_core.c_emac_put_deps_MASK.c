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
struct emac_instance {int /*<<< orphan*/  tah_dev; int /*<<< orphan*/  mdio_dev; int /*<<< orphan*/  rgmii_dev; int /*<<< orphan*/  zmii_dev; int /*<<< orphan*/  mal_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct emac_instance *dev)
{
	FUNC0(dev->mal_dev);
	FUNC0(dev->zmii_dev);
	FUNC0(dev->rgmii_dev);
	FUNC0(dev->mdio_dev);
	FUNC0(dev->tah_dev);
}