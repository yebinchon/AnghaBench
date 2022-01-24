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
typedef  int /*<<< orphan*/  u8 ;
struct spi_nor {struct intel_spi* priv; } ;
struct intel_spi {scalar_t__ swseq_reg; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FADDR ; 
 int /*<<< orphan*/  OPTYPE_READ_NO_ADDR ; 
 int FUNC0 (struct intel_spi*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct intel_spi*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct intel_spi*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
{
	struct intel_spi *ispi = nor->priv;
	int ret;

	/* Address of the first chip */
	FUNC3(0, ispi->base + FADDR);

	if (ispi->swseq_reg)
		ret = FUNC2(ispi, opcode, len,
					 OPTYPE_READ_NO_ADDR);
	else
		ret = FUNC0(ispi, opcode, len);

	if (ret)
		return ret;

	return FUNC1(ispi, buf, len);
}