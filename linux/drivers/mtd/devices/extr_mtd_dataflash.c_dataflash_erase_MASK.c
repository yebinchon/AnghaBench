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
typedef  scalar_t__ u32 ;
struct spi_transfer {int len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct mtd_info {struct dataflash* priv; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; } ;
struct dataflash {int page_size; unsigned int page_offset; int /*<<< orphan*/  lock; int /*<<< orphan*/ * command; struct spi_device* spi; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OP_ERASE_BLOCK ; 
 int /*<<< orphan*/  OP_ERASE_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 unsigned int FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_message*) ; 
 int FUNC9 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC10(struct mtd_info *mtd, struct erase_info *instr)
{
	struct dataflash	*priv = mtd->priv;
	struct spi_device	*spi = priv->spi;
	struct spi_transfer	x = { };
	struct spi_message	msg;
	unsigned		blocksize = priv->page_size << 3;
	u8			*command;
	u32			rem;

	FUNC1(&spi->dev, "erase addr=0x%llx len 0x%llx\n",
		(long long)instr->addr, (long long)instr->len);

	FUNC4(instr->len, priv->page_size, &rem);
	if (rem)
		return -EINVAL;
	FUNC4(instr->addr, priv->page_size, &rem);
	if (rem)
		return -EINVAL;

	FUNC8(&msg);

	x.tx_buf = command = priv->command;
	x.len = 4;
	FUNC7(&x, &msg);

	FUNC5(&priv->lock);
	while (instr->len > 0) {
		unsigned int	pageaddr;
		int		status;
		int		do_block;

		/* Calculate flash page address; use block erase (for speed) if
		 * we're at a block boundary and need to erase the whole block.
		 */
		pageaddr = FUNC3(instr->addr, priv->page_size);
		do_block = (pageaddr & 0x7) == 0 && instr->len >= blocksize;
		pageaddr = pageaddr << priv->page_offset;

		command[0] = do_block ? OP_ERASE_BLOCK : OP_ERASE_PAGE;
		command[1] = (u8)(pageaddr >> 16);
		command[2] = (u8)(pageaddr >> 8);
		command[3] = 0;

		FUNC1(&spi->dev, "ERASE %s: (%x) %x %x %x [%i]\n",
			do_block ? "block" : "page",
			command[0], command[1], command[2], command[3],
			pageaddr);

		status = FUNC9(spi, &msg);
		(void) FUNC0(spi);

		if (status < 0) {
			FUNC2(&spi->dev, "erase %x, err %d\n",
				pageaddr, status);
			/* REVISIT:  can retry instr->retries times; or
			 * giveup and instr->fail_addr = instr->addr;
			 */
			continue;
		}

		if (do_block) {
			instr->addr += blocksize;
			instr->len -= blocksize;
		} else {
			instr->addr += priv->page_size;
			instr->len -= priv->page_size;
		}
	}
	FUNC6(&priv->lock);

	return 0;
}