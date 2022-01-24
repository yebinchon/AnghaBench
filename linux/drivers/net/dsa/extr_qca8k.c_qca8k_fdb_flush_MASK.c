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
 int /*<<< orphan*/  QCA8K_FDB_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct qca8k_priv *priv)
{
	FUNC0(&priv->reg_mutex);
	FUNC2(priv, QCA8K_FDB_FLUSH, -1);
	FUNC1(&priv->reg_mutex);
}