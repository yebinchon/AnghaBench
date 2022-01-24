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
typedef  scalar_t__ uint32_t ;
struct ubi_ec_hdr {int /*<<< orphan*/  hdr_crc; } ;
struct ubi_device {int /*<<< orphan*/  ec_hdr_alsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE_CRC ; 
 int UBI_IO_BITFLIPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_ec_hdr*) ; 
 struct ubi_ec_hdr* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ubi_device const*,int,struct ubi_ec_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_ec_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device const*,char*,int,...) ; 
 int FUNC10 (struct ubi_device const*,struct ubi_ec_hdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct ubi_device *ubi, int pnum)
{
	int err;
	uint32_t crc, hdr_crc;
	struct ubi_ec_hdr *ec_hdr;

	if (!FUNC7(ubi))
		return 0;

	ec_hdr = FUNC4(ubi->ec_hdr_alsize, GFP_NOFS);
	if (!ec_hdr)
		return -ENOMEM;

	err = FUNC10(ubi, ec_hdr, pnum, 0, UBI_EC_HDR_SIZE);
	if (err && err != UBI_IO_BITFLIPS && !FUNC5(err))
		goto exit;

	crc = FUNC1(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
	hdr_crc = FUNC0(ec_hdr->hdr_crc);
	if (hdr_crc != crc) {
		FUNC9(ubi, "bad CRC, calculated %#08x, read %#08x",
			crc, hdr_crc);
		FUNC9(ubi, "self-check failed for PEB %d", pnum);
		FUNC8(ec_hdr);
		FUNC2();
		err = -EINVAL;
		goto exit;
	}

	err = FUNC6(ubi, pnum, ec_hdr);

exit:
	FUNC3(ec_hdr);
	return err;
}