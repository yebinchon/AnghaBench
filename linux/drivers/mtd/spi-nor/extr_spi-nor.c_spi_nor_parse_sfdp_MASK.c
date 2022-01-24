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
struct spi_nor_flash_parameter {int dummy; } ;
struct spi_nor {struct device* dev; } ;
struct sfdp_parameter_header {scalar_t__ major; scalar_t__ minor; scalar_t__ length; } ;
struct sfdp_header {scalar_t__ major; int nph; struct sfdp_parameter_header bfpt_header; int /*<<< orphan*/  signature; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  SFDP_4BAIT_ID 129 
 int SFDP_BFPT_ID ; 
 scalar_t__ SFDP_JESD216_MAJOR ; 
 int FUNC0 (struct sfdp_parameter_header const*) ; 
#define  SFDP_SECTOR_MAP_ID 128 
 scalar_t__ SFDP_SIGNATURE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sfdp_parameter_header*) ; 
 struct sfdp_parameter_header* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct spi_nor*,struct sfdp_parameter_header const*,struct spi_nor_flash_parameter*) ; 
 int FUNC7 (struct spi_nor*,struct sfdp_parameter_header const*,struct spi_nor_flash_parameter*) ; 
 int FUNC8 (struct spi_nor*,struct sfdp_parameter_header const*,struct spi_nor_flash_parameter*) ; 
 int FUNC9 (struct spi_nor*,int,size_t,struct sfdp_parameter_header*) ; 
 int FUNC10 (struct spi_nor*,int /*<<< orphan*/ ,int,struct sfdp_header*) ; 

__attribute__((used)) static int FUNC11(struct spi_nor *nor,
			      struct spi_nor_flash_parameter *params)
{
	const struct sfdp_parameter_header *param_header, *bfpt_header;
	struct sfdp_parameter_header *param_headers = NULL;
	struct sfdp_header header;
	struct device *dev = nor->dev;
	size_t psize;
	int i, err;

	/* Get the SFDP header. */
	err = FUNC10(nor, 0, sizeof(header), &header);
	if (err < 0)
		return err;

	/* Check the SFDP header version. */
	if (FUNC5(header.signature) != SFDP_SIGNATURE ||
	    header.major != SFDP_JESD216_MAJOR)
		return -EINVAL;

	/*
	 * Verify that the first and only mandatory parameter header is a
	 * Basic Flash Parameter Table header as specified in JESD216.
	 */
	bfpt_header = &header.bfpt_header;
	if (FUNC0(bfpt_header) != SFDP_BFPT_ID ||
	    bfpt_header->major != SFDP_JESD216_MAJOR)
		return -EINVAL;

	/*
	 * Allocate memory then read all parameter headers with a single
	 * Read SFDP command. These parameter headers will actually be parsed
	 * twice: a first time to get the latest revision of the basic flash
	 * parameter table, then a second time to handle the supported optional
	 * tables.
	 * Hence we read the parameter headers once for all to reduce the
	 * processing time. Also we use kmalloc() instead of devm_kmalloc()
	 * because we don't need to keep these parameter headers: the allocated
	 * memory is always released with kfree() before exiting this function.
	 */
	if (header.nph) {
		psize = header.nph * sizeof(*param_headers);

		param_headers = FUNC4(psize, GFP_KERNEL);
		if (!param_headers)
			return -ENOMEM;

		err = FUNC9(nor, sizeof(header),
					psize, param_headers);
		if (err < 0) {
			FUNC1(dev, "failed to read SFDP parameter headers\n");
			goto exit;
		}
	}

	/*
	 * Check other parameter headers to get the latest revision of
	 * the basic flash parameter table.
	 */
	for (i = 0; i < header.nph; i++) {
		param_header = &param_headers[i];

		if (FUNC0(param_header) == SFDP_BFPT_ID &&
		    param_header->major == SFDP_JESD216_MAJOR &&
		    (param_header->minor > bfpt_header->minor ||
		     (param_header->minor == bfpt_header->minor &&
		      param_header->length > bfpt_header->length)))
			bfpt_header = param_header;
	}

	err = FUNC7(nor, bfpt_header, params);
	if (err)
		goto exit;

	/* Parse optional parameter tables. */
	for (i = 0; i < header.nph; i++) {
		param_header = &param_headers[i];

		switch (FUNC0(param_header)) {
		case SFDP_SECTOR_MAP_ID:
			err = FUNC8(nor, param_header, params);
			break;

		case SFDP_4BAIT_ID:
			err = FUNC6(nor, param_header, params);
			break;

		default:
			break;
		}

		if (err) {
			FUNC2(dev, "Failed to parse optional parameter table: %04x\n",
				 FUNC0(param_header));
			/*
			 * Let's not drop all information we extracted so far
			 * if optional table parsers fail. In case of failing,
			 * each optional parser is responsible to roll back to
			 * the previously known spi_nor data.
			 */
			err = 0;
		}
	}

exit:
	FUNC3(param_headers);
	return err;
}