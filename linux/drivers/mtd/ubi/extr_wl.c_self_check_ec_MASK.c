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
struct ubi_ec_hdr {int /*<<< orphan*/  ec; } ;
struct ubi_device {int /*<<< orphan*/  ec_hdr_alsize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int UBI_IO_BITFLIPS ; 
 long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_ec_hdr*) ; 
 struct ubi_ec_hdr* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,char*,long long,...) ; 
 int FUNC6 (struct ubi_device*,int,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ubi_device *ubi, int pnum, int ec)
{
	int err;
	long long read_ec;
	struct ubi_ec_hdr *ec_hdr;

	if (!FUNC4(ubi))
		return 0;

	ec_hdr = FUNC3(ubi->ec_hdr_alsize, GFP_NOFS);
	if (!ec_hdr)
		return -ENOMEM;

	err = FUNC6(ubi, pnum, ec_hdr, 0);
	if (err && err != UBI_IO_BITFLIPS) {
		/* The header does not have to exist */
		err = 0;
		goto out_free;
	}

	read_ec = FUNC0(ec_hdr->ec);
	if (ec != read_ec && read_ec - ec > 1) {
		FUNC5(ubi, "self-check failed for PEB %d", pnum);
		FUNC5(ubi, "read EC is %lld, should be %d", read_ec, ec);
		FUNC1();
		err = 1;
	} else
		err = 0;

out_free:
	FUNC2(ec_hdr);
	return err;
}