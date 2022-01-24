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
struct ubi_ec_hdr {scalar_t__ version; int /*<<< orphan*/  data_offset; int /*<<< orphan*/  vid_hdr_offset; int /*<<< orphan*/  ec; } ;
struct ubi_device {int vid_hdr_offset; int leb_start; } ;

/* Variables and functions */
 long long UBI_MAX_ERASECOUNTER ; 
 scalar_t__ UBI_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_ec_hdr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device const*,char*,...) ; 

__attribute__((used)) static int FUNC5(const struct ubi_device *ubi,
			   const struct ubi_ec_hdr *ec_hdr)
{
	long long ec;
	int vid_hdr_offset, leb_start;

	ec = FUNC1(ec_hdr->ec);
	vid_hdr_offset = FUNC0(ec_hdr->vid_hdr_offset);
	leb_start = FUNC0(ec_hdr->data_offset);

	if (ec_hdr->version != UBI_VERSION) {
		FUNC4(ubi, "node with incompatible UBI version found: this UBI version is %d, image version is %d",
			UBI_VERSION, (int)ec_hdr->version);
		goto bad;
	}

	if (vid_hdr_offset != ubi->vid_hdr_offset) {
		FUNC4(ubi, "bad VID header offset %d, expected %d",
			vid_hdr_offset, ubi->vid_hdr_offset);
		goto bad;
	}

	if (leb_start != ubi->leb_start) {
		FUNC4(ubi, "bad data offset %d, expected %d",
			leb_start, ubi->leb_start);
		goto bad;
	}

	if (ec < 0 || ec > UBI_MAX_ERASECOUNTER) {
		FUNC4(ubi, "bad erase counter %lld", ec);
		goto bad;
	}

	return 0;

bad:
	FUNC4(ubi, "bad EC header");
	FUNC3(ec_hdr);
	FUNC2();
	return 1;
}