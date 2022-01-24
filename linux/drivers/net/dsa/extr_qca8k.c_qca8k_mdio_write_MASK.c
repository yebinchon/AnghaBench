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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qca8k_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PHY_MAX_ADDR ; 
 scalar_t__ QCA8K_MDIO_MASTER_BUSY ; 
 int /*<<< orphan*/  QCA8K_MDIO_MASTER_CTRL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QCA8K_MDIO_MASTER_EN ; 
 scalar_t__ QCA8K_MDIO_MASTER_MAX_REG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ QCA8K_MDIO_MASTER_WRITE ; 
 int FUNC3 (struct qca8k_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct qca8k_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct qca8k_priv *priv, int port, u32 regnum, u16 data)
{
	u32 phy, val;

	if (regnum >= QCA8K_MDIO_MASTER_MAX_REG)
		return -EINVAL;

	/* callee is responsible for not passing bad ports,
	 * but we still would like to make spills impossible.
	 */
	phy = FUNC4(port) % PHY_MAX_ADDR;
	val = QCA8K_MDIO_MASTER_BUSY | QCA8K_MDIO_MASTER_EN |
	      QCA8K_MDIO_MASTER_WRITE | FUNC1(phy) |
	      FUNC2(regnum) |
	      FUNC0(data);

	FUNC5(priv, QCA8K_MDIO_MASTER_CTRL, val);

	return FUNC3(priv, QCA8K_MDIO_MASTER_CTRL,
		QCA8K_MDIO_MASTER_BUSY);
}