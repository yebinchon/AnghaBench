#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct cxl_afu {int crs_len; TYPE_1__* guest; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 char FUNC4 (int /*<<< orphan*/ *) ; 
 char FUNC5 (unsigned int*) ; 
 char FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static int FUNC9(int sz, struct cxl_afu *afu, int cr_idx,
			u64 offset, u64 *val)
{
	unsigned long cr;
	char c;
	int rc = 0;

	if (afu->crs_len < sz)
		return -ENOENT;

	if (FUNC7(offset >= afu->crs_len))
		return -ERANGE;

	cr = FUNC3(GFP_KERNEL);
	if (!cr)
		return -ENOMEM;

	rc = FUNC1(afu->guest->handle, cr_idx, offset,
			FUNC8((void *)cr), sz);
	if (rc)
		goto err;

	switch (sz) {
	case 1:
		c = *((char *) cr);
		*val = c;
		break;
	case 2:
		*val = FUNC4((u16 *)cr);
		break;
	case 4:
		*val = FUNC5((unsigned *)cr);
		break;
	case 8:
		*val = FUNC6((u64 *)cr);
		break;
	default:
		FUNC0(1);
	}
err:
	FUNC2(cr);
	return rc;
}