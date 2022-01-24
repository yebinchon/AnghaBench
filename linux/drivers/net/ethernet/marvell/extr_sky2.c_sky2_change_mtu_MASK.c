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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sky2_port {unsigned int port; scalar_t__ speed; struct sky2_hw* hw; } ;
struct sky2_hw {int flags; int /*<<< orphan*/  napi; TYPE_1__* pdev; } ;
struct net_device {int mtu; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  B0_Y2_SP_LISR ; 
 int /*<<< orphan*/  DATA_BLIND_DEF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETH_DATA_LEN ; 
 int GM_GPCR_RX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  GM_SERIAL_MODE ; 
 int GM_SMOD_JUMBO_ENA ; 
 int GM_SMOD_VLAN_ENA ; 
 int /*<<< orphan*/  IPG_DATA_DEF_1000 ; 
 int /*<<< orphan*/  IPG_DATA_DEF_10_100 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_CTRL ; 
 int /*<<< orphan*/  RB_ENA_OP_MD ; 
 int SKY2_HW_RAM_BUFFER ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sky2_port* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 int FUNC14 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC17 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC18 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC19 (struct sky2_hw*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct net_device *dev, int new_mtu)
{
	struct sky2_port *sky2 = FUNC8(dev);
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;
	int err;
	u16 ctl, mode;
	u32 imask;

	if (!FUNC10(dev)) {
		dev->mtu = new_mtu;
		FUNC9(dev);
		return 0;
	}

	imask = FUNC15(hw, B0_IMSK);
	FUNC20(hw, B0_IMSK, 0);
	FUNC15(hw, B0_IMSK);

	FUNC11(dev);	/* prevent tx timeout */
	FUNC6(&hw->napi);
	FUNC12(dev);

	FUNC22(hw->pdev->irq);

	if (!(hw->flags & SKY2_HW_RAM_BUFFER))
		FUNC19(hw, port);

	ctl = FUNC4(hw, port, GM_GP_CTRL);
	FUNC5(hw, port, GM_GP_CTRL, ctl & ~GM_GPCR_RX_ENA);
	FUNC18(sky2);
	FUNC16(sky2);

	dev->mtu = new_mtu;
	FUNC9(dev);

	mode = FUNC0(DATA_BLIND_DEF) |	GM_SMOD_VLAN_ENA;
	if (sky2->speed > SPEED_100)
		mode |= FUNC1(IPG_DATA_DEF_1000);
	else
		mode |= FUNC1(IPG_DATA_DEF_10_100);

	if (dev->mtu > ETH_DATA_LEN)
		mode |= GM_SMOD_JUMBO_ENA;

	FUNC5(hw, port, GM_SERIAL_MODE, mode);

	FUNC21(hw, FUNC2(rxqaddr[port], RB_CTRL), RB_ENA_OP_MD);

	err = FUNC14(sky2);
	if (!err)
		FUNC17(sky2);
	else
		FUNC16(sky2);
	FUNC20(hw, B0_IMSK, imask);

	FUNC15(hw, B0_Y2_SP_LISR);
	FUNC7(&hw->napi);

	if (err)
		FUNC3(dev);
	else {
		FUNC5(hw, port, GM_GP_CTRL, ctl);

		FUNC13(dev);
	}

	return err;
}