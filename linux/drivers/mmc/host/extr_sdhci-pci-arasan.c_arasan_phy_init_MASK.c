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
typedef  int u8 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALDONE_MASK ; 
 int /*<<< orphan*/  CLKBUF_SEL ; 
 int /*<<< orphan*/  CLK_CTRL ; 
 int /*<<< orphan*/  CMD_CTRL ; 
 int /*<<< orphan*/  DATA_CTRL ; 
 int EBUSY ; 
 int /*<<< orphan*/  IOPU_CTRL1 ; 
 int /*<<< orphan*/  IOPU_CTRL2 ; 
 int /*<<< orphan*/  IOREN_CTRL1 ; 
 int /*<<< orphan*/  IOREN_CTRL2 ; 
 int /*<<< orphan*/  IPAD_CTRL1 ; 
 int /*<<< orphan*/  IPAD_CTRL2 ; 
 int /*<<< orphan*/  IPAD_STS ; 
 int LEGACY_MODE ; 
 int MAX_CLK_BUF ; 
 int /*<<< orphan*/  MODE_CTRL ; 
 int PDB_CLOCK ; 
 int PDB_CMND ; 
 int PDB_DATA ; 
 int PDB_ENBL ; 
 int PDB_STRB ; 
 int PU_CMD ; 
 int PU_DAT ; 
 int REN_CMND ; 
 int REN_DATA ; 
 int REN_STRB ; 
 int RETB_ENBL ; 
 int RTRIM_EN ; 
 int /*<<< orphan*/  STRB_CTRL ; 
 scalar_t__ FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sdhci_host *host)
{
	int ret;
	u8 val;

	/* Program IOPADs and wait for calibration to be done */
	if (FUNC0(host, IPAD_CTRL1, &val) ||
	    FUNC2(host, val | RETB_ENBL | PDB_ENBL, IPAD_CTRL1) ||
	    FUNC0(host, IPAD_CTRL2, &val) ||
	    FUNC2(host, val | RTRIM_EN, IPAD_CTRL2))
		return -EBUSY;
	ret = FUNC1(host, IPAD_STS, CALDONE_MASK);
	if (ret)
		return -EBUSY;

	/* Program CMD/Data lines */
	if (FUNC0(host, IOREN_CTRL1, &val) ||
	    FUNC2(host, val | REN_CMND | REN_STRB, IOREN_CTRL1) ||
	    FUNC0(host, IOPU_CTRL1, &val) ||
	    FUNC2(host, val | PU_CMD, IOPU_CTRL1) ||
	    FUNC0(host, CMD_CTRL, &val) ||
	    FUNC2(host, val | PDB_CMND, CMD_CTRL) ||
	    FUNC0(host, IOREN_CTRL2, &val) ||
	    FUNC2(host, val | REN_DATA, IOREN_CTRL2) ||
	    FUNC0(host, IOPU_CTRL2, &val) ||
	    FUNC2(host, val | PU_DAT, IOPU_CTRL2) ||
	    FUNC0(host, DATA_CTRL, &val) ||
	    FUNC2(host, val | PDB_DATA, DATA_CTRL) ||
	    FUNC0(host, STRB_CTRL, &val) ||
	    FUNC2(host, val | PDB_STRB, STRB_CTRL) ||
	    FUNC0(host, CLK_CTRL, &val) ||
	    FUNC2(host, val | PDB_CLOCK, CLK_CTRL) ||
	    FUNC0(host, CLKBUF_SEL, &val) ||
	    FUNC2(host, val | MAX_CLK_BUF, CLKBUF_SEL) ||
	    FUNC2(host, LEGACY_MODE, MODE_CTRL))
		return -EBUSY;
	return 0;
}