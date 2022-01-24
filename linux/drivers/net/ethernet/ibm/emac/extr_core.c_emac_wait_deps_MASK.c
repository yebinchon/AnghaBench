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
struct emac_instance {int mal_ph; int zmii_ph; int rgmii_ph; int tah_ph; int mdio_ph; scalar_t__ blist; int /*<<< orphan*/  mdio_dev; int /*<<< orphan*/  tah_dev; int /*<<< orphan*/  rgmii_dev; int /*<<< orphan*/  zmii_dev; int /*<<< orphan*/  mal_dev; } ;
struct emac_depentry {int phandle; int /*<<< orphan*/  ofdev; int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  deps ;

/* Variables and functions */
 int EMAC_DEP_COUNT ; 
 size_t EMAC_DEP_MAL_IDX ; 
 size_t EMAC_DEP_MDIO_IDX ; 
 size_t EMAC_DEP_PREV_IDX ; 
 size_t EMAC_DEP_RGMII_IDX ; 
 size_t EMAC_DEP_TAH_IDX ; 
 size_t EMAC_DEP_ZMII_IDX ; 
 int /*<<< orphan*/  EMAC_PROBE_DEP_TIMEOUT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ emac_boot_list ; 
 scalar_t__ FUNC2 (struct emac_instance*,struct emac_depentry*) ; 
 int /*<<< orphan*/  emac_of_bus_notifier ; 
 int /*<<< orphan*/  emac_probe_wait ; 
 int /*<<< orphan*/  FUNC3 (struct emac_depentry**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct emac_instance *dev)
{
	struct emac_depentry deps[EMAC_DEP_COUNT];
	int i, err;

	FUNC3(&deps, 0, sizeof(deps));

	deps[EMAC_DEP_MAL_IDX].phandle = dev->mal_ph;
	deps[EMAC_DEP_ZMII_IDX].phandle = dev->zmii_ph;
	deps[EMAC_DEP_RGMII_IDX].phandle = dev->rgmii_ph;
	if (dev->tah_ph)
		deps[EMAC_DEP_TAH_IDX].phandle = dev->tah_ph;
	if (dev->mdio_ph)
		deps[EMAC_DEP_MDIO_IDX].phandle = dev->mdio_ph;
	if (dev->blist && dev->blist > emac_boot_list)
		deps[EMAC_DEP_PREV_IDX].phandle = 0xffffffffu;
	FUNC0(&platform_bus_type, &emac_of_bus_notifier);
	FUNC6(emac_probe_wait,
			   FUNC2(dev, deps),
			   EMAC_PROBE_DEP_TIMEOUT);
	FUNC1(&platform_bus_type, &emac_of_bus_notifier);
	err = FUNC2(dev, deps) ? 0 : -ENODEV;
	for (i = 0; i < EMAC_DEP_COUNT; i++) {
		FUNC5(deps[i].node);
		if (err)
			FUNC4(deps[i].ofdev);
	}
	if (err == 0) {
		dev->mal_dev = deps[EMAC_DEP_MAL_IDX].ofdev;
		dev->zmii_dev = deps[EMAC_DEP_ZMII_IDX].ofdev;
		dev->rgmii_dev = deps[EMAC_DEP_RGMII_IDX].ofdev;
		dev->tah_dev = deps[EMAC_DEP_TAH_IDX].ofdev;
		dev->mdio_dev = deps[EMAC_DEP_MDIO_IDX].ofdev;
	}
	FUNC4(deps[EMAC_DEP_PREV_IDX].ofdev);
	return err;
}