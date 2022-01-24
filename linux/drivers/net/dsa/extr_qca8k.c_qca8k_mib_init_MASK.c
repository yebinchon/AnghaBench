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
struct qca8k_priv {int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 int QCA8K_MIB_BUSY ; 
 int QCA8K_MIB_CPU_KEEP ; 
 int QCA8K_MIB_FLUSH ; 
 int /*<<< orphan*/  QCA8K_MODULE_EN_MIB ; 
 int /*<<< orphan*/  QCA8K_REG_MIB ; 
 int /*<<< orphan*/  QCA8K_REG_MODULE_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qca8k_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct qca8k_priv *priv)
{
	FUNC0(&priv->reg_mutex);
	FUNC3(priv, QCA8K_REG_MIB, QCA8K_MIB_FLUSH | QCA8K_MIB_BUSY);
	FUNC2(priv, QCA8K_REG_MIB, QCA8K_MIB_BUSY);
	FUNC3(priv, QCA8K_REG_MIB, QCA8K_MIB_CPU_KEEP);
	FUNC4(priv, QCA8K_REG_MODULE_EN, QCA8K_MODULE_EN_MIB);
	FUNC1(&priv->reg_mutex);
}