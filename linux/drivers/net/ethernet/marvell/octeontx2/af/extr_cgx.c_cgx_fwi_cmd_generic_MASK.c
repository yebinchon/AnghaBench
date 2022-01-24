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
typedef  int /*<<< orphan*/  u64 ;
struct lmac {int dummy; } ;
struct cgx {int dummy; } ;

/* Variables and functions */
 scalar_t__ CGX_STAT_FAIL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  EVTREG_STAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lmac*) ; 
 struct lmac* FUNC2 (int,struct cgx*) ; 

__attribute__((used)) static inline int FUNC3(u64 req, u64 *resp,
				      struct cgx *cgx, int lmac_id)
{
	struct lmac *lmac;
	int err;

	lmac = FUNC2(lmac_id, cgx);
	if (!lmac)
		return -ENODEV;

	err = FUNC1(req, resp, lmac);

	/* Check for valid response */
	if (!err) {
		if (FUNC0(EVTREG_STAT, *resp) == CGX_STAT_FAIL)
			return -EIO;
		else
			return 0;
	}

	return err;
}