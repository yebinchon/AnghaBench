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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {int /*<<< orphan*/  dev; struct iproc_mdiomux_desc* priv; } ;
struct iproc_mdiomux_desc {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_CTRL_WRITE_OP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus,
			       int phyid, int reg, u16 val)
{
	struct iproc_mdiomux_desc *md = bus->priv;
	int ret;

	/* Write val at reg offset */
	ret = FUNC1(md->base, phyid, reg, val, MDIO_CTRL_WRITE_OP);
	if (ret < 0)
		FUNC0(&bus->dev, "mdiomux write operation failed!!!");

	return ret;
}