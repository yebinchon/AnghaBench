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
struct device_node {int dummy; } ;
struct ath_softc {struct ath_hw* sc_ah; TYPE_2__* dev; } ;
struct ath_hw {int /*<<< orphan*/  ah_flags; int /*<<< orphan*/  dev; } ;
struct ath_common {int /*<<< orphan*/  macaddr; TYPE_1__* bus_ops; } ;
typedef  enum ath_bus_type { ____Placeholder_ath_bus_type } ath_bus_type ;
typedef  int /*<<< orphan*/  eeprom_name ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_3__ {int ath_bus_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_NO_EEP_SWAP ; 
 int /*<<< orphan*/  AH_USE_EEPROM ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (struct ath_softc*,char*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 char* FUNC8 (struct device_node*) ; 
 scalar_t__ FUNC9 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ath_softc *sc)
{
	struct device_node *np = sc->dev->of_node;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	enum ath_bus_type bus_type = common->bus_ops->ath_bus_type;
	const char *mac;
	char eeprom_name[100];
	int ret;

	if (!FUNC7(np))
		return 0;

	FUNC4(common, CONFIG, "parsing configuration from OF node\n");

	if (FUNC9(np, "qca,no-eeprom")) {
		/* ath9k-eeprom-<bus>-<id>.bin */
		FUNC10(eeprom_name, sizeof(eeprom_name),
			  "ath9k-eeprom-%s-%s.bin",
			  FUNC3(bus_type), FUNC5(ah->dev));

		ret = FUNC1(sc, eeprom_name);
		if (ret)
			return ret;

		ah->ah_flags &= ~AH_USE_EEPROM;
		ah->ah_flags |= AH_NO_EEP_SWAP;
	}

	mac = FUNC8(np);
	if (!FUNC0(mac))
		FUNC6(common->macaddr, mac);

	return 0;
}