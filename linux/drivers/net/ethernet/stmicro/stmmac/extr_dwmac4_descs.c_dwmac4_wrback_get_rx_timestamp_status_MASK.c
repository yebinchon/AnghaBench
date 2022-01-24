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
typedef  int /*<<< orphan*/  u32 ;
struct dma_desc {int /*<<< orphan*/  des1; int /*<<< orphan*/  des3; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int RDES1_TIMESTAMP_AVAILABLE ; 
 int RDES3_RDES1_VALID ; 
 int FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *desc, void *next_desc,
						 u32 ats)
{
	struct dma_desc *p = (struct dma_desc *)desc;
	int ret = -EINVAL;

	/* Get the status from normal w/b descriptor */
	if (FUNC2(FUNC1(p->des3) & RDES3_RDES1_VALID)) {
		if (FUNC2(FUNC1(p->des1) & RDES1_TIMESTAMP_AVAILABLE)) {
			int i = 0;

			/* Check if timestamp is OK from context descriptor */
			do {
				ret = FUNC0(next_desc);
				if (ret < 0)
					goto exit;
				i++;

			} while ((ret == 1) && (i < 10));

			if (i == 10)
				ret = -EBUSY;
		}
	}
exit:
	if (FUNC2(ret == 0))
		return 1;

	return 0;
}