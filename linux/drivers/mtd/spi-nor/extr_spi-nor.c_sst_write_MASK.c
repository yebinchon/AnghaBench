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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u32 ;
struct spi_nor {int sst_write_second; void* program_opcode; int /*<<< orphan*/  dev; } ;
struct mtd_info {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 void* SPINOR_OP_AAI_WP ; 
 void* SPINOR_OP_BP ; 
 int /*<<< orphan*/  SPI_NOR_OPS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 struct spi_nor* FUNC2 (struct mtd_info*) ; 
 int FUNC3 (struct spi_nor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_nor*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct spi_nor*) ; 
 int FUNC6 (struct spi_nor*,int,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC9(struct mtd_info *mtd, loff_t to, size_t len,
		size_t *retlen, const u_char *buf)
{
	struct spi_nor *nor = FUNC2(mtd);
	size_t actual;
	int ret;

	FUNC1(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);

	ret = FUNC3(nor, SPI_NOR_OPS_WRITE);
	if (ret)
		return ret;

	FUNC8(nor);

	nor->sst_write_second = false;

	actual = to % 2;
	/* Start write from odd address. */
	if (actual) {
		nor->program_opcode = SPINOR_OP_BP;

		/* write one byte. */
		ret = FUNC6(nor, to, 1, buf);
		if (ret < 0)
			goto sst_write_err;
		FUNC0(ret != 1, "While writing 1 byte written %i bytes\n",
		     (int)ret);
		ret = FUNC5(nor);
		if (ret)
			goto sst_write_err;
	}
	to += actual;

	/* Write out most of the data here. */
	for (; actual < len - 1; actual += 2) {
		nor->program_opcode = SPINOR_OP_AAI_WP;

		/* write two bytes. */
		ret = FUNC6(nor, to, 2, buf + actual);
		if (ret < 0)
			goto sst_write_err;
		FUNC0(ret != 2, "While writing 2 bytes written %i bytes\n",
		     (int)ret);
		ret = FUNC5(nor);
		if (ret)
			goto sst_write_err;
		to += 2;
		nor->sst_write_second = true;
	}
	nor->sst_write_second = false;

	FUNC7(nor);
	ret = FUNC5(nor);
	if (ret)
		goto sst_write_err;

	/* Write out trailing byte if it exists. */
	if (actual != len) {
		FUNC8(nor);

		nor->program_opcode = SPINOR_OP_BP;
		ret = FUNC6(nor, to, 1, buf + actual);
		if (ret < 0)
			goto sst_write_err;
		FUNC0(ret != 1, "While writing 1 byte written %i bytes\n",
		     (int)ret);
		ret = FUNC5(nor);
		if (ret)
			goto sst_write_err;
		FUNC7(nor);
		actual += 1;
	}
sst_write_err:
	*retlen += actual;
	FUNC4(nor, SPI_NOR_OPS_WRITE);
	return ret;
}