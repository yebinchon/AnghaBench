#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int start; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int (* data ) (struct device_node*) ;} ;
struct mii_bus {char* name; TYPE_1__* parent; int /*<<< orphan*/  phy_mask; int /*<<< orphan*/  id; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; struct fec_info* priv; } ;
struct fec_info {int mii_speed; TYPE_2__* fecp; } ;
struct TYPE_7__ {int /*<<< orphan*/  fec_mii_speed; int /*<<< orphan*/  fec_ievent; int /*<<< orphan*/  fec_ecntrl; int /*<<< orphan*/  fec_r_cntrl; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FEC_ECNTRL_ETHER_EN ; 
 int FEC_ECNTRL_PINMUX ; 
 int /*<<< orphan*/  FEC_ENET_MII ; 
 int FEC_RCNTRL_MII_MODE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  fs_enet_fec_mii_read ; 
 int /*<<< orphan*/  fs_enet_fec_mii_write ; 
 int /*<<< orphan*/  fs_enet_mdio_fec_match ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fec_info*) ; 
 struct fec_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mii_bus*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC11 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mii_bus*) ; 
 int /*<<< orphan*/  ppc_proc_freq ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *ofdev)
{
	const struct of_device_id *match;
	struct resource res;
	struct mii_bus *new_bus;
	struct fec_info *fec;
	int (*get_bus_freq)(struct device_node *);
	int ret = -ENOMEM, clock, speed;

	match = FUNC10(fs_enet_mdio_fec_match, &ofdev->dev);
	if (!match)
		return -EINVAL;
	get_bus_freq = match->data;

	new_bus = FUNC7();
	if (!new_bus)
		goto out;

	fec = FUNC6(sizeof(struct fec_info), GFP_KERNEL);
	if (!fec)
		goto out_mii;

	new_bus->priv = fec;
	new_bus->name = "FEC MII Bus";
	new_bus->read = &fs_enet_fec_mii_read;
	new_bus->write = &fs_enet_fec_mii_write;

	ret = FUNC9(ofdev->dev.of_node, 0, &res);
	if (ret)
		goto out_res;

	FUNC16(new_bus->id, MII_BUS_ID_SIZE, "%x", res.start);

	fec->fecp = FUNC3(res.start, FUNC14(&res));
	if (!fec->fecp) {
		ret = -ENOMEM;
		goto out_fec;
	}

	if (get_bus_freq) {
		clock = get_bus_freq(ofdev->dev.of_node);
		if (!clock) {
			/* Use maximum divider if clock is unknown */
			FUNC2(&ofdev->dev, "could not determine IPS clock\n");
			clock = 0x3F * 5000000;
		}
	} else
		clock = ppc_proc_freq;

	/*
	 * Scale for a MII clock <= 2.5 MHz
	 * Note that only 6 bits (25:30) are available for MII speed.
	 */
	speed = (clock + 4999999) / 5000000;
	if (speed > 0x3F) {
		speed = 0x3F;
		FUNC1(&ofdev->dev,
			"MII clock (%d Hz) exceeds max (2.5 MHz)\n",
			clock / speed);
	}

	fec->mii_speed = speed << 1;

	FUNC15(&fec->fecp->fec_r_cntrl, FEC_RCNTRL_MII_MODE);
	FUNC15(&fec->fecp->fec_ecntrl, FEC_ECNTRL_PINMUX |
	                                  FEC_ECNTRL_ETHER_EN);
	FUNC12(&fec->fecp->fec_ievent, FEC_ENET_MII);
	FUNC0(&fec->fecp->fec_mii_speed, 0x7E, fec->mii_speed);

	new_bus->phy_mask = ~0;

	new_bus->parent = &ofdev->dev;
	FUNC13(ofdev, new_bus);

	ret = FUNC11(new_bus, ofdev->dev.of_node);
	if (ret)
		goto out_unmap_regs;

	return 0;

out_unmap_regs:
	FUNC4(fec->fecp);
out_res:
out_fec:
	FUNC5(fec);
out_mii:
	FUNC8(new_bus);
out:
	return ret;
}