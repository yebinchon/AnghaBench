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
struct qca8k_priv {int dummy; } ;
typedef  enum qca8k_fdb_cmd { ____Placeholder_qca8k_fdb_cmd } qca8k_fdb_cmd ;

/* Variables and functions */
 int QCA8K_ATU_FUNC_BUSY ; 
 int QCA8K_ATU_FUNC_FULL ; 
 int QCA8K_ATU_FUNC_PORT_EN ; 
 int QCA8K_ATU_FUNC_PORT_M ; 
 int QCA8K_ATU_FUNC_PORT_S ; 
 int QCA8K_FDB_LOAD ; 
 int /*<<< orphan*/  QCA8K_REG_ATU_FUNC ; 
 scalar_t__ FUNC0 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct qca8k_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct qca8k_priv *priv, enum qca8k_fdb_cmd cmd, int port)
{
	u32 reg;

	/* Set the command and FDB index */
	reg = QCA8K_ATU_FUNC_BUSY;
	reg |= cmd;
	if (port >= 0) {
		reg |= QCA8K_ATU_FUNC_PORT_EN;
		reg |= (port & QCA8K_ATU_FUNC_PORT_M) << QCA8K_ATU_FUNC_PORT_S;
	}

	/* Write the function register triggering the table access */
	FUNC2(priv, QCA8K_REG_ATU_FUNC, reg);

	/* wait for completion */
	if (FUNC0(priv, QCA8K_REG_ATU_FUNC, QCA8K_ATU_FUNC_BUSY))
		return -1;

	/* Check for table full violation when adding an entry */
	if (cmd == QCA8K_FDB_LOAD) {
		reg = FUNC1(priv, QCA8K_REG_ATU_FUNC);
		if (reg & QCA8K_ATU_FUNC_FULL)
			return -1;
	}

	return 0;
}