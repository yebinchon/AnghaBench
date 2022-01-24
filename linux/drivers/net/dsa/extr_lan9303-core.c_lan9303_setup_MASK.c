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
struct lan9303 {int /*<<< orphan*/  dev; } ;
struct dsa_switch {struct lan9303* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LAN9303_SWE_GLB_INGRESS_CFG ; 
 int FUNC0 (int) ; 
 int LAN9303_SWE_GLB_INGR_IGMP_TRAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lan9303*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lan9303*) ; 
 int FUNC5 (struct lan9303*) ; 
 int FUNC6 (struct lan9303*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct dsa_switch *ds)
{
	struct lan9303 *chip = ds->priv;
	int ret;

	/* Make sure that port 0 is the cpu port */
	if (!FUNC2(ds, 0)) {
		FUNC1(chip->dev, "port 0 is not the CPU port\n");
		return -EINVAL;
	}

	ret = FUNC5(chip);
	if (ret)
		FUNC1(chip->dev, "failed to setup port tagging %d\n", ret);

	ret = FUNC4(chip);
	if (ret)
		FUNC1(chip->dev, "failed to separate ports %d\n", ret);

	ret = FUNC3(chip, 0);
	if (ret)
		FUNC1(chip->dev, "failed to re-enable switching %d\n", ret);

	/* Trap IGMP to port 0 */
	ret = FUNC6(chip, LAN9303_SWE_GLB_INGRESS_CFG,
					    LAN9303_SWE_GLB_INGR_IGMP_TRAP |
					    FUNC0(0),
					    FUNC0(1) |
					    FUNC0(2));
	if (ret)
		FUNC1(chip->dev, "failed to setup IGMP trap %d\n", ret);

	return 0;
}