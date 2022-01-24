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
struct ath10k {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 void const** FUNC0 (int) ; 
 int /*<<< orphan*/  WMI_TLV_TAG_MAX ; 
 int FUNC1 (struct ath10k*,void const**,void const*,size_t) ; 
 void** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const**) ; 

__attribute__((used)) static const void **
FUNC4(struct ath10k *ar, const void *ptr,
			   size_t len, gfp_t gfp)
{
	const void **tb;
	int ret;

	tb = FUNC2(WMI_TLV_TAG_MAX, sizeof(*tb), gfp);
	if (!tb)
		return FUNC0(-ENOMEM);

	ret = FUNC1(ar, tb, ptr, len);
	if (ret) {
		FUNC3(tb);
		return FUNC0(ret);
	}

	return tb;
}