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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct flash_info {int dummy; } ;
typedef  int /*<<< orphan*/  jedec ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ CFI_MFR_ATMEL ; 
 int DATAFLASH_SHIFT_EXTID ; 
 int DATAFLASH_SHIFT_ID ; 
 int ENODEV ; 
 struct flash_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct flash_info*) ; 
 scalar_t__ OP_READ_ID ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct flash_info* FUNC5 (struct spi_device*,int,int) ; 
 int FUNC6 (struct spi_device*,scalar_t__*,int,scalar_t__*,unsigned int const) ; 

__attribute__((used)) static struct flash_info *FUNC7(struct spi_device *spi)
{
	int ret;
	u8 code = OP_READ_ID;
	u64 jedec;
	u8 id[sizeof(jedec)] = {0};
	const unsigned int id_size = 5;
	struct flash_info *info;

	/*
	 * JEDEC also defines an optional "extended device information"
	 * string for after vendor-specific data, after the three bytes
	 * we use here.  Supporting some chips might require using it.
	 *
	 * If the vendor ID isn't Atmel's (0x1f), assume this call failed.
	 * That's not an error; only rev C and newer chips handle it, and
	 * only Atmel sells these chips.
	 */
	ret = FUNC6(spi, &code, 1, id, id_size);
	if (ret < 0) {
		FUNC3(&spi->dev, "error %d reading JEDEC ID\n", ret);
		return FUNC0(ret);
	}

	if (id[0] != CFI_MFR_ATMEL)
		return NULL;

	jedec = FUNC2((__be64 *)id);

	/*
	 * First, try to match device using extended device
	 * information
	 */
	info = FUNC5(spi, jedec >> DATAFLASH_SHIFT_EXTID, true);
	if (!FUNC1(info))
		return info;
	/*
	 * If that fails, make another pass using regular ID
	 * information
	 */
	info = FUNC5(spi, jedec >> DATAFLASH_SHIFT_ID, false);
	if (!FUNC1(info))
		return info;
	/*
	 * Treat other chips as errors ... we won't know the right page
	 * size (it might be binary) even when we can tell which density
	 * class is involved (legacy chip id scheme).
	 */
	FUNC4(&spi->dev, "JEDEC id %016llx not handled\n", jedec);
	return FUNC0(-ENODEV);
}