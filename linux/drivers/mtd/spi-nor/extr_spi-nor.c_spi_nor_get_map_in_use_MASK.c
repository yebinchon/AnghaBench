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
struct spi_nor {int addr_width; int read_dummy; int read_opcode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int const) ; 
 int FUNC2 (int const) ; 
 int const SMPT_DESC_END ; 
 int const SMPT_DESC_TYPE_MAP ; 
 int FUNC3 (int const) ; 
 scalar_t__ FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct spi_nor*,int,int,int*) ; 
 int FUNC8 (struct spi_nor*,int const) ; 
 int FUNC9 (struct spi_nor*,int const) ; 

__attribute__((used)) static const u32 *FUNC10(struct spi_nor *nor, const u32 *smpt,
					 u8 smpt_len)
{
	const u32 *ret;
	u8 *buf;
	u32 addr;
	int err;
	u8 i;
	u8 addr_width, read_opcode, read_dummy;
	u8 read_data_mask, map_id;

	/* Use a kmalloc'ed bounce buffer to guarantee it is DMA-able. */
	buf = FUNC6(sizeof(*buf), GFP_KERNEL);
	if (!buf)
		return FUNC0(-ENOMEM);

	addr_width = nor->addr_width;
	read_dummy = nor->read_dummy;
	read_opcode = nor->read_opcode;

	map_id = 0;
	/* Determine if there are any optional Detection Command Descriptors */
	for (i = 0; i < smpt_len; i += 2) {
		if (smpt[i] & SMPT_DESC_TYPE_MAP)
			break;

		read_data_mask = FUNC2(smpt[i]);
		nor->addr_width = FUNC8(nor, smpt[i]);
		nor->read_dummy = FUNC9(nor, smpt[i]);
		nor->read_opcode = FUNC1(smpt[i]);
		addr = smpt[i + 1];

		err = FUNC7(nor, addr, 1, buf);
		if (err) {
			ret = FUNC0(err);
			goto out;
		}

		/*
		 * Build an index value that is used to select the Sector Map
		 * Configuration that is currently in use.
		 */
		map_id = map_id << 1 | !!(*buf & read_data_mask);
	}

	/*
	 * If command descriptors are provided, they always precede map
	 * descriptors in the table. There is no need to start the iteration
	 * over smpt array all over again.
	 *
	 * Find the matching configuration map.
	 */
	ret = FUNC0(-EINVAL);
	while (i < smpt_len) {
		if (FUNC3(smpt[i]) == map_id) {
			ret = smpt + i;
			break;
		}

		/*
		 * If there are no more configuration map descriptors and no
		 * configuration ID matched the configuration identifier, the
		 * sector address map is unknown.
		 */
		if (smpt[i] & SMPT_DESC_END)
			break;

		/* increment the table index to the next map */
		i += FUNC4(smpt[i]) + 1;
	}

	/* fall through */
out:
	FUNC5(buf);
	nor->addr_width = addr_width;
	nor->read_dummy = read_dummy;
	nor->read_opcode = read_opcode;
	return ret;
}