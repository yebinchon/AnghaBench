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
struct nand_sdr_timings {int tRC_min; int tREA_max; int tRHOH_min; int /*<<< orphan*/  tBERS_max; int /*<<< orphan*/  tADL_min; int /*<<< orphan*/  tWB_max; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int dummy; } ;
struct meson_nfc_nand_chip {int level1_divider; int clk_rate; int bus_timing; int /*<<< orphan*/  tbers_max; void* tadl; void* twb; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC2 (struct nand_sdr_timings const*) ; 
 int NAND_DATA_IFACE_CHECK_ONLY ; 
 int NFC_CLK_CYCLE ; 
 int NFC_DEFAULT_DELAY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct nand_sdr_timings* FUNC6 (struct nand_data_interface const*) ; 
 struct meson_nfc_nand_chip* FUNC7 (struct nand_chip*) ; 

__attribute__((used)) static
int FUNC8(struct nand_chip *nand, int csline,
				   const struct nand_data_interface *conf)
{
	struct meson_nfc_nand_chip *meson_chip = FUNC7(nand);
	const struct nand_sdr_timings *timings;
	u32 div, bt_min, bt_max, tbers_clocks;

	timings = FUNC6(conf);
	if (FUNC2(timings))
		return -ENOTSUPP;

	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
		return 0;

	div = FUNC0((timings->tRC_min / 1000), NFC_CLK_CYCLE);
	bt_min = (timings->tREA_max + NFC_DEFAULT_DELAY) / div;
	bt_max = (NFC_DEFAULT_DELAY + timings->tRHOH_min +
		  timings->tRC_min / 2) / div;

	meson_chip->twb = FUNC0(FUNC3(timings->tWB_max),
				       div * NFC_CLK_CYCLE);
	meson_chip->tadl = FUNC0(FUNC3(timings->tADL_min),
					div * NFC_CLK_CYCLE);
	tbers_clocks = FUNC1(FUNC3(timings->tBERS_max),
					div * NFC_CLK_CYCLE);
	meson_chip->tbers_max = FUNC4(tbers_clocks);
	if (!FUNC5(tbers_clocks))
		meson_chip->tbers_max++;

	bt_min = FUNC0(bt_min, 1000);
	bt_max = FUNC0(bt_max, 1000);

	if (bt_max < bt_min)
		return -EINVAL;

	meson_chip->level1_divider = div;
	meson_chip->clk_rate = 1000000000 / meson_chip->level1_divider;
	meson_chip->bus_timing = (bt_min + bt_max) / 2 + 1;

	return 0;
}