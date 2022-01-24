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
typedef  int u32 ;
struct gswip_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSWIP_BM_RAM_ADDR ; 
 int /*<<< orphan*/  GSWIP_BM_RAM_CTRL ; 
 int GSWIP_BM_RAM_CTRL_ADDR_MASK ; 
 int GSWIP_BM_RAM_CTRL_BAS ; 
 int GSWIP_BM_RAM_CTRL_OPMOD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gswip_priv*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gswip_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gswip_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gswip_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct gswip_priv *priv, u32 table,
				    u32 index)
{
	u32 result;
	int err;

	FUNC5(priv, index, GSWIP_BM_RAM_ADDR);
	FUNC2(priv, GSWIP_BM_RAM_CTRL_ADDR_MASK |
				GSWIP_BM_RAM_CTRL_OPMOD,
			      table | GSWIP_BM_RAM_CTRL_BAS,
			      GSWIP_BM_RAM_CTRL);

	err = FUNC4(priv, GSWIP_BM_RAM_CTRL,
				     GSWIP_BM_RAM_CTRL_BAS);
	if (err) {
		FUNC1(priv->dev, "timeout while reading table: %u, index: %u",
			table, index);
		return 0;
	}

	result = FUNC3(priv, FUNC0(0));
	result |= FUNC3(priv, FUNC0(1)) << 16;

	return result;
}