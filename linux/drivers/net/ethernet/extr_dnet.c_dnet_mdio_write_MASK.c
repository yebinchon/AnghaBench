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
typedef  int u16 ;
struct mii_bus {struct dnet* priv; } ;
struct dnet {int dummy; } ;

/* Variables and functions */
 int DNET_INTERNAL_GMII_MNG_CMD_FIN ; 
 int /*<<< orphan*/  DNET_INTERNAL_GMII_MNG_CTL_REG ; 
 int /*<<< orphan*/  DNET_INTERNAL_GMII_MNG_DAT_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct dnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int mii_id, int regnum,
			   u16 value)
{
	struct dnet *bp = bus->priv;
	u16 tmp;

	FUNC3("mdio_write %02x:%02x <- %04x\n", mii_id, regnum, value);

	while (!(FUNC1(bp, DNET_INTERNAL_GMII_MNG_CTL_REG)
				& DNET_INTERNAL_GMII_MNG_CMD_FIN))
		FUNC0();

	/* prepare for a write operation */
	tmp = (1 << 13);

	/* only 5 bits allowed for phy-addr and reg_offset */
	mii_id &= 0x1f;
	regnum &= 0x1f;

	/* only 16 bits on data */
	value &= 0xffff;

	/* prepare reg_value for a write */
	tmp |= (mii_id << 8);
	tmp |= regnum;

	/* write data to write first */
	FUNC2(bp, DNET_INTERNAL_GMII_MNG_DAT_REG, value);

	/* write control word */
	FUNC2(bp, DNET_INTERNAL_GMII_MNG_CTL_REG, tmp);

	while (!(FUNC1(bp, DNET_INTERNAL_GMII_MNG_CTL_REG)
				& DNET_INTERNAL_GMII_MNG_CMD_FIN))
		FUNC0();

	return 0;
}