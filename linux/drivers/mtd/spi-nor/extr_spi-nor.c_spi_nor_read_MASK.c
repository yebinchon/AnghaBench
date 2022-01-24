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
struct spi_nor {int /*<<< orphan*/  dev; } ;
struct mtd_info {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SPI_NOR_OPS_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 struct spi_nor* FUNC2 (struct mtd_info*) ; 
 scalar_t__ FUNC3 (struct spi_nor*,scalar_t__) ; 
 int FUNC4 (struct spi_nor*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct spi_nor*,scalar_t__,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_nor*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mtd_info *mtd, loff_t from, size_t len,
			size_t *retlen, u_char *buf)
{
	struct spi_nor *nor = FUNC2(mtd);
	int ret;

	FUNC1(nor->dev, "from 0x%08x, len %zd\n", (u32)from, len);

	ret = FUNC4(nor, SPI_NOR_OPS_READ);
	if (ret)
		return ret;

	while (len) {
		loff_t addr = from;

		addr = FUNC3(nor, addr);

		ret = FUNC5(nor, addr, len, buf);
		if (ret == 0) {
			/* We shouldn't see 0-length reads */
			ret = -EIO;
			goto read_err;
		}
		if (ret < 0)
			goto read_err;

		FUNC0(ret > len);
		*retlen += ret;
		buf += ret;
		from += ret;
		len -= ret;
	}
	ret = 0;

read_err:
	FUNC6(nor, SPI_NOR_OPS_READ);
	return ret;
}