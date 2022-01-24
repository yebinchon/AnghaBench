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
struct ubi_wl_entry {unsigned long long ec; int /*<<< orphan*/  pnum; } ;
struct ubi_ec_hdr {int /*<<< orphan*/  ec; } ;
struct ubi_device {unsigned long long max_ec; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  ec_hdr_alsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned long long UBI_MAX_ERASECOUNTER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_ec_hdr*) ; 
 struct ubi_ec_hdr* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubi_device*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC8 (struct ubi_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct ubi_device*,int /*<<< orphan*/ ,struct ubi_ec_hdr*) ; 

__attribute__((used)) static int FUNC10(struct ubi_device *ubi, struct ubi_wl_entry *e,
		      int torture)
{
	int err;
	struct ubi_ec_hdr *ec_hdr;
	unsigned long long ec = e->ec;

	FUNC1("erase PEB %d, old EC %llu", e->pnum, ec);

	err = FUNC4(ubi, e->pnum, e->ec);
	if (err)
		return -EINVAL;

	ec_hdr = FUNC3(ubi->ec_hdr_alsize, GFP_NOFS);
	if (!ec_hdr)
		return -ENOMEM;

	err = FUNC8(ubi, e->pnum, torture);
	if (err < 0)
		goto out_free;

	ec += err;
	if (ec > UBI_MAX_ERASECOUNTER) {
		/*
		 * Erase counter overflow. Upgrade UBI and use 64-bit
		 * erase counters internally.
		 */
		FUNC7(ubi, "erase counter overflow at PEB %d, EC %llu",
			e->pnum, ec);
		err = -EINVAL;
		goto out_free;
	}

	FUNC1("erased PEB %d, new EC %llu", e->pnum, ec);

	ec_hdr->ec = FUNC0(ec);

	err = FUNC9(ubi, e->pnum, ec_hdr);
	if (err)
		goto out_free;

	e->ec = ec;
	FUNC5(&ubi->wl_lock);
	if (e->ec > ubi->max_ec)
		ubi->max_ec = e->ec;
	FUNC6(&ubi->wl_lock);

out_free:
	FUNC2(ec_hdr);
	return err;
}