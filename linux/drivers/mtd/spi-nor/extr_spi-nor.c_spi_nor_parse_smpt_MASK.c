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
typedef  int /*<<< orphan*/  u32 ;
struct spi_nor_flash_parameter {int /*<<< orphan*/  erase_map; } ;
struct spi_nor {int dummy; } ;
struct sfdp_parameter_header {int length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfdp_parameter_header const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct spi_nor*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct spi_nor*,struct spi_nor_flash_parameter*,int /*<<< orphan*/  const*) ; 
 int FUNC8 (struct spi_nor*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct spi_nor *nor,
			      const struct sfdp_parameter_header *smpt_header,
			      struct spi_nor_flash_parameter *params)
{
	const u32 *sector_map;
	u32 *smpt;
	size_t len;
	u32 addr;
	int i, ret;

	/* Read the Sector Map Parameter Table. */
	len = smpt_header->length * sizeof(*smpt);
	smpt = FUNC4(len, GFP_KERNEL);
	if (!smpt)
		return -ENOMEM;

	addr = FUNC2(smpt_header);
	ret = FUNC8(nor, addr, len, smpt);
	if (ret)
		goto out;

	/* Fix endianness of the SMPT DWORDs. */
	for (i = 0; i < smpt_header->length; i++)
		smpt[i] = FUNC5(smpt[i]);

	sector_map = FUNC6(nor, smpt, smpt_header->length);
	if (FUNC0(sector_map)) {
		ret = FUNC1(sector_map);
		goto out;
	}

	ret = FUNC7(nor, params, sector_map);
	if (ret)
		goto out;

	FUNC9(&params->erase_map);
	/* fall through */
out:
	FUNC3(smpt);
	return ret;
}