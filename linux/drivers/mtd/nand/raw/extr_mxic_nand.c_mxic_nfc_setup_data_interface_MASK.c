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
struct nand_sdr_timings {int tRC_min; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int dummy; } ;
struct mxic_nand_ctlr {scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DATA_STROB ; 
 int /*<<< orphan*/  DATA_STROB_EDO_EN ; 
 scalar_t__ FUNC0 (struct nand_sdr_timings const*) ; 
 int NAND_DATA_IFACE_CHECK_ONLY ; 
 int NSEC_PER_SEC ; 
 int FUNC1 (struct nand_sdr_timings const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int FUNC3 (struct mxic_nand_ctlr*,unsigned long) ; 
 struct mxic_nand_ctlr* FUNC4 (struct nand_chip*) ; 
 struct nand_sdr_timings* FUNC5 (struct nand_data_interface const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, int chipnr,
					 const struct nand_data_interface *conf)
{
	struct mxic_nand_ctlr *nfc = FUNC4(chip);
	const struct nand_sdr_timings *sdr;
	unsigned long freq;
	int ret;

	sdr = FUNC5(conf);
	if (FUNC0(sdr))
		return FUNC1(sdr);

	if (chipnr == NAND_DATA_IFACE_CHECK_ONLY)
		return 0;

	freq = NSEC_PER_SEC / (sdr->tRC_min / 1000);

	ret =  FUNC3(nfc, freq);
	if (ret)
		FUNC2(nfc->dev, "set freq:%ld failed\n", freq);

	if (sdr->tRC_min < 30000)
		FUNC6(DATA_STROB_EDO_EN, nfc->regs + DATA_STROB);

	return 0;
}