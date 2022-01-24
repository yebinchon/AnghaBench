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
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UBI_IO_BITFLIPS ; 
 long long UBI_MAX_ERASECOUNTER ; 
 long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_ec_hdr*) ; 
 struct ubi_ec_hdr* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubi_device*,int,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubi_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ubi_device*,int,struct ubi_ec_hdr*) ; 

__attribute__((used)) static int FUNC7(struct ubi_device *ubi, int pnum)
{
	int ret;
	struct ubi_ec_hdr *ec_hdr;
	long long ec;

	ec_hdr = FUNC3(ubi->ec_hdr_alsize, GFP_KERNEL);
	if (!ec_hdr)
		return -ENOMEM;

	ret = FUNC4(ubi, pnum, ec_hdr, 0);
	if (ret < 0)
		goto out;
	else if (ret && ret != UBI_IO_BITFLIPS) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC5(ubi, pnum, 0);
	if (ret < 0)
		goto out;

	ec = FUNC0(ec_hdr->ec);
	ec += ret;
	if (ec > UBI_MAX_ERASECOUNTER) {
		ret = -EINVAL;
		goto out;
	}

	ec_hdr->ec = FUNC1(ec);
	ret = FUNC6(ubi, pnum, ec_hdr);
	if (ret < 0)
		goto out;

	ret = ec;
out:
	FUNC2(ec_hdr);
	return ret;
}