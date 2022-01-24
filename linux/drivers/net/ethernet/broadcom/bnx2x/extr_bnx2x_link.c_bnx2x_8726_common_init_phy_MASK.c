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
typedef  int u32 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef  size_t s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_GEN_CTRL ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_0 ; 
 int MISC_REGISTERS_GPIO_3 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_HIGH ; 
 int MISC_REGISTERS_GPIO_PORT_SHIFT ; 
 int /*<<< orphan*/  MISC_REG_GPIO_EVENT_EN ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 size_t PORT_MAX ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bnx2x*,int /*<<< orphan*/ ,int,int,size_t,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct bnx2x *bp,
				      u32 shmem_base_path[],
				      u32 shmem2_base_path[], u8 phy_index,
				      u32 chip_id)
{
	u32 val;
	s8 port;
	struct bnx2x_phy phy;
	/* Use port1 because of the static port-swap */
	/* Enable the module detection interrupt */
	val = FUNC2(bp, MISC_REG_GPIO_EVENT_EN);
	val |= ((1<<MISC_REGISTERS_GPIO_3)|
		(1<<(MISC_REGISTERS_GPIO_3 + MISC_REGISTERS_GPIO_PORT_SHIFT)));
	FUNC3(bp, MISC_REG_GPIO_EVENT_EN, val);

	FUNC5(bp, 0);
	FUNC8(5000, 10000);
	for (port = 0; port < PORT_MAX; port++) {
		u32 shmem_base, shmem2_base;

		/* In E2, same phy is using for port0 of the two paths */
		if (FUNC0(bp)) {
			shmem_base = shmem_base_path[0];
			shmem2_base = shmem2_base_path[0];
		} else {
			shmem_base = shmem_base_path[port];
			shmem2_base = shmem2_base_path[port];
		}
		/* Extract the ext phy address for the port */
		if (FUNC6(bp, phy_index, shmem_base, shmem2_base,
				       port, &phy) !=
		    0) {
			FUNC1(NETIF_MSG_LINK, "populate phy failed\n");
			return -EINVAL;
		}

		/* Reset phy*/
		FUNC4(bp, &phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_GEN_CTRL, 0x0001);


		/* Set fault module detected LED on */
		FUNC7(bp, MISC_REGISTERS_GPIO_0,
			       MISC_REGISTERS_GPIO_HIGH,
			       port);
	}

	return 0;
}