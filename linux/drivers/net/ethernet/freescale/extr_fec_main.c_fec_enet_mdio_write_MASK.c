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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {struct fec_enet_private* priv; } ;
struct fec_enet_private {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mdio_done; scalar_t__ hwp; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FEC_MII_DATA ; 
 int /*<<< orphan*/  FEC_MII_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FEC_MMFR_OP_ADDR_WRITE ; 
 int FEC_MMFR_OP_WRITE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FEC_MMFR_ST ; 
 int FEC_MMFR_ST_C45 ; 
 int FEC_MMFR_TA ; 
 int MII_ADDR_C45 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct mii_bus *bus, int mii_id, int regnum,
			   u16 value)
{
	struct fec_enet_private *fep = bus->priv;
	struct device *dev = &fep->pdev->dev;
	unsigned long time_left;
	int ret, frame_start, frame_addr;
	bool is_c45 = !!(regnum & MII_ADDR_C45);

	ret = FUNC4(dev);
	if (ret < 0)
		return ret;
	else
		ret = 0;

	FUNC7(&fep->mdio_done);

	if (is_c45) {
		frame_start = FEC_MMFR_ST_C45;

		/* write address */
		frame_addr = (regnum >> 16);
		FUNC10(frame_start | FEC_MMFR_OP_ADDR_WRITE |
		       FUNC1(mii_id) | FUNC2(frame_addr) |
		       FEC_MMFR_TA | (regnum & 0xFFFF),
		       fep->hwp + FEC_MII_DATA);

		/* wait for end of transfer */
		time_left = FUNC9(&fep->mdio_done,
			FUNC8(FEC_MII_TIMEOUT));
		if (time_left == 0) {
			FUNC3(fep->netdev, "MDIO address write timeout\n");
			ret = -ETIMEDOUT;
			goto out;
		}
	} else {
		/* C22 write */
		frame_start = FEC_MMFR_ST;
		frame_addr = regnum;
	}

	/* start a write op */
	FUNC10(frame_start | FEC_MMFR_OP_WRITE |
		FUNC1(mii_id) | FUNC2(frame_addr) |
		FEC_MMFR_TA | FUNC0(value),
		fep->hwp + FEC_MII_DATA);

	/* wait for end of transfer */
	time_left = FUNC9(&fep->mdio_done,
			FUNC8(FEC_MII_TIMEOUT));
	if (time_left == 0) {
		FUNC3(fep->netdev, "MDIO write timeout\n");
		ret  = -ETIMEDOUT;
	}

out:
	FUNC5(dev);
	FUNC6(dev);

	return ret;
}