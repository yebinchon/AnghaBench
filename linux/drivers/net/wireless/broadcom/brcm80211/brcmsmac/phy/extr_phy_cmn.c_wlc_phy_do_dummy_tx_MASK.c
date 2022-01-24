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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct brcms_phy {TYPE_1__* sh; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  corerev; int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int DUMMY_PKT_LEN ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 int PHY_TXC_ANT_0 ; 
 int FUNC4 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ifsstat ; 
 int /*<<< orphan*/  txe_aux ; 
 int /*<<< orphan*/  txe_ctl ; 
 int /*<<< orphan*/  txe_phyctl ; 
 int /*<<< orphan*/  txe_phyctl1 ; 
 int /*<<< orphan*/  txe_status ; 
 int /*<<< orphan*/  txe_wm_0 ; 
 int /*<<< orphan*/  txe_wm_1 ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  wepctl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xmtsel ; 
 int /*<<< orphan*/  xmttplatetxptr ; 
 int /*<<< orphan*/  xmttxcnt ; 

void FUNC9(struct brcms_phy *pi, bool ofdm, bool pa_on)
{
#define DUMMY_PKT_LEN   20
	struct bcma_device *core = pi->d11core;
	int i, count;
	u8 ofdmpkt[DUMMY_PKT_LEN] = {
		0xcc, 0x01, 0x02, 0x00, 0x00, 0x00, 0xd4, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	};
	u8 cckpkt[DUMMY_PKT_LEN] = {
		0x6e, 0x84, 0x0b, 0x00, 0x00, 0x00, 0xd4, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	};
	u32 *dummypkt;

	dummypkt = (u32 *) (ofdm ? ofdmpkt : cckpkt);
	FUNC7(pi->sh->physhim, 0, DUMMY_PKT_LEN,
				      dummypkt);

	FUNC5(core, FUNC0(xmtsel), 0);

	if (FUNC1(pi->sh->corerev, 11))
		FUNC5(core, FUNC0(wepctl), 0x100);
	else
		FUNC5(core, FUNC0(wepctl), 0);

	FUNC5(core, FUNC0(txe_phyctl),
		     (ofdm ? 1 : 0) | PHY_TXC_ANT_0);
	if (FUNC3(pi) || FUNC2(pi))
		FUNC5(core, FUNC0(txe_phyctl1), 0x1A02);

	FUNC5(core, FUNC0(txe_wm_0), 0);
	FUNC5(core, FUNC0(txe_wm_1), 0);

	FUNC5(core, FUNC0(xmttplatetxptr), 0);
	FUNC5(core, FUNC0(xmttxcnt), DUMMY_PKT_LEN);

	FUNC5(core, FUNC0(xmtsel),
		     ((8 << 8) | (1 << 5) | (1 << 2) | 2));

	FUNC5(core, FUNC0(txe_ctl), 0);

	if (!pa_on) {
		if (FUNC3(pi))
			FUNC8(pi, OFF);
	}

	if (FUNC3(pi) || FUNC2(pi))
		FUNC5(core, FUNC0(txe_aux), 0xD0);
	else
		FUNC5(core, FUNC0(txe_aux), ((1 << 5) | (1 << 4)));

	(void)FUNC4(core, FUNC0(txe_aux));

	i = 0;
	count = ofdm ? 30 : 250;
	while ((i++ < count)
	       && (FUNC4(core, FUNC0(txe_status)) & (1 << 7)))
		FUNC6(10);

	i = 0;

	while ((i++ < 10) &&
	       ((FUNC4(core, FUNC0(txe_status)) & (1 << 10)) == 0))
		FUNC6(10);

	i = 0;

	while ((i++ < 10) &&
	       ((FUNC4(core, FUNC0(ifsstat)) & (1 << 8))))
		FUNC6(10);

	if (!pa_on) {
		if (FUNC3(pi))
			FUNC8(pi, ON);
	}
}