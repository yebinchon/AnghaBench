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
typedef  int u32 ;
struct spi_nor {struct hifmc_priv* priv; } ;
struct hifmc_priv {int /*<<< orphan*/  chipselect; struct hifmc_host* host; } ;
struct hifmc_host {scalar_t__ regbase; } ;

/* Variables and functions */
 scalar_t__ FMC_CMD ; 
 int FUNC0 (int) ; 
 scalar_t__ FMC_DATA_NUM ; 
 int FUNC1 (int) ; 
 scalar_t__ FMC_INT_CLR ; 
 scalar_t__ FMC_OP ; 
 scalar_t__ FMC_OP_CFG ; 
 int FMC_OP_CMD1_EN ; 
 int FMC_OP_REG_OP_START ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hifmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct spi_nor *nor,
				u8 opcode, int len, u8 optype)
{
	struct hifmc_priv *priv = nor->priv;
	struct hifmc_host *host = priv->host;
	u32 reg;

	reg = FUNC0(opcode);
	FUNC4(reg, host->regbase + FMC_CMD);

	reg = FUNC1(len);
	FUNC4(reg, host->regbase + FMC_DATA_NUM);

	reg = FUNC2(priv->chipselect);
	FUNC4(reg, host->regbase + FMC_OP_CFG);

	FUNC4(0xff, host->regbase + FMC_INT_CLR);
	reg = FMC_OP_CMD1_EN | FMC_OP_REG_OP_START | optype;
	FUNC4(reg, host->regbase + FMC_OP);

	return FUNC3(host);
}