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
struct lan9303 {scalar_t__ phy_addr_base; } ;
struct dsa_switch {struct lan9303* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lan9303*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int port)
{
	struct lan9303 *chip = ds->priv;

	if (!FUNC0(ds, port))
		return;

	FUNC1(chip, port);
	FUNC2(ds, chip->phy_addr_base + port, MII_BMCR, BMCR_PDOWN);
}