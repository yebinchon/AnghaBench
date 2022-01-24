#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct cpsw_slave {int slave_num; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {struct cpsw_slave* slaves; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ptype; } ;

/* Variables and functions */
 int CPSW_FIFO_SHAPE_EN_SHIFT ; 
 size_t FUNC0 (struct cpsw_common*,struct cpsw_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct cpsw_priv *priv)
{
	struct cpsw_common *cpsw = priv->cpsw;
	struct cpsw_slave *slave;
	u32 shift, mask, val;

	val = FUNC1(&cpsw->regs->ptype);

	slave = &cpsw->slaves[FUNC0(cpsw, priv)];
	shift = CPSW_FIFO_SHAPE_EN_SHIFT + 3 * slave->slave_num;
	mask = 7 << shift;
	val = val & mask;

	return !val;
}