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
struct mii_bus {struct fec_enet_private* priv; } ;
struct fec_enet_private {scalar_t__ hwp; int /*<<< orphan*/  netdev; int /*<<< orphan*/  mdio_done; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FEC_MII_DATA ; 
 int /*<<< orphan*/  FEC_MII_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FEC_MMFR_OP_ADDR_WRITE ; 
 int FEC_MMFR_OP_READ ; 
 int FEC_MMFR_OP_READ_C45 ; 
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
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct mii_bus *bus, int mii_id, int regnum)
{
	struct fec_enet_private *fep = bus->priv;
	struct device *dev = &fep->pdev->dev;
	unsigned long time_left;
	int ret = 0, frame_start, frame_addr, frame_op;
	bool is_c45 = !!(regnum & MII_ADDR_C45);

	ret = FUNC4(dev);
	if (ret < 0)
		return ret;

	FUNC8(&fep->mdio_done);

	if (is_c45) {
		frame_start = FEC_MMFR_ST_C45;

		/* write address */
		frame_addr = (regnum >> 16);
		FUNC11(frame_start | FEC_MMFR_OP_ADDR_WRITE |
		       FUNC1(mii_id) | FUNC2(frame_addr) |
		       FEC_MMFR_TA | (regnum & 0xFFFF),
		       fep->hwp + FEC_MII_DATA);

		/* wait for end of transfer */
		time_left = FUNC10(&fep->mdio_done,
				FUNC9(FEC_MII_TIMEOUT));
		if (time_left == 0) {
			FUNC3(fep->netdev, "MDIO address write timeout\n");
			ret = -ETIMEDOUT;
			goto out;
		}

		frame_op = FEC_MMFR_OP_READ_C45;

	} else {
		/* C22 read */
		frame_op = FEC_MMFR_OP_READ;
		frame_start = FEC_MMFR_ST;
		frame_addr = regnum;
	}

	/* start a read op */
	FUNC11(frame_start | frame_op |
		FUNC1(mii_id) | FUNC2(frame_addr) |
		FEC_MMFR_TA, fep->hwp + FEC_MII_DATA);

	/* wait for end of transfer */
	time_left = FUNC10(&fep->mdio_done,
			FUNC9(FEC_MII_TIMEOUT));
	if (time_left == 0) {
		FUNC3(fep->netdev, "MDIO read timeout\n");
		ret = -ETIMEDOUT;
		goto out;
	}

	ret = FUNC0(FUNC7(fep->hwp + FEC_MII_DATA));

out:
	FUNC5(dev);
	FUNC6(dev);

	return ret;
}