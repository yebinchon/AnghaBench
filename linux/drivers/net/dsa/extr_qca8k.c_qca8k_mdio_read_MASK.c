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
struct qca8k_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ PHY_MAX_ADDR ; 
 scalar_t__ QCA8K_MDIO_MASTER_BUSY ; 
 int /*<<< orphan*/  QCA8K_MDIO_MASTER_CTRL ; 
 scalar_t__ QCA8K_MDIO_MASTER_DATA_MASK ; 
 scalar_t__ QCA8K_MDIO_MASTER_EN ; 
 scalar_t__ QCA8K_MDIO_MASTER_MAX_REG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ QCA8K_MDIO_MASTER_READ ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct qca8k_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct qca8k_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qca8k_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct qca8k_priv *priv, int port, u32 regnum)
{
	u32 phy, val;

	if (regnum >= QCA8K_MDIO_MASTER_MAX_REG)
		return -EINVAL;

	/* callee is responsible for not passing bad ports,
	 * but we still would like to make spills impossible.
	 */
	phy = FUNC3(port) % PHY_MAX_ADDR;
	val = QCA8K_MDIO_MASTER_BUSY | QCA8K_MDIO_MASTER_EN |
	      QCA8K_MDIO_MASTER_READ | FUNC0(phy) |
	      FUNC1(regnum);

	FUNC5(priv, QCA8K_MDIO_MASTER_CTRL, val);

	if (FUNC2(priv, QCA8K_MDIO_MASTER_CTRL,
			    QCA8K_MDIO_MASTER_BUSY))
		return -ETIMEDOUT;

	val = (FUNC4(priv, QCA8K_MDIO_MASTER_CTRL) &
		QCA8K_MDIO_MASTER_DATA_MASK);

	return val;
}