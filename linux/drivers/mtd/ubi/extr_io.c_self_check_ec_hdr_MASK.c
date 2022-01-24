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
struct ubi_ec_hdr {int /*<<< orphan*/  magic; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UBI_EC_HDR_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_ec_hdr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device const*,char*,int,...) ; 
 int FUNC5 (struct ubi_device const*,struct ubi_ec_hdr const*) ; 

__attribute__((used)) static int FUNC6(const struct ubi_device *ubi, int pnum,
			     const struct ubi_ec_hdr *ec_hdr)
{
	int err;
	uint32_t magic;

	if (!FUNC2(ubi))
		return 0;

	magic = FUNC0(ec_hdr->magic);
	if (magic != UBI_EC_HDR_MAGIC) {
		FUNC4(ubi, "bad magic %#08x, must be %#08x",
			magic, UBI_EC_HDR_MAGIC);
		goto fail;
	}

	err = FUNC5(ubi, ec_hdr);
	if (err) {
		FUNC4(ubi, "self-check failed for PEB %d", pnum);
		goto fail;
	}

	return 0;

fail:
	FUNC3(ec_hdr);
	FUNC1();
	return -EINVAL;
}