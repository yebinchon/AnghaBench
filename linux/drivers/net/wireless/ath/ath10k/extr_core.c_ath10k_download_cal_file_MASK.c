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
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar,
				    const struct firmware *file)
{
	int ret;

	if (!file)
		return -ENOENT;

	if (FUNC0(file))
		return FUNC1(file);

	ret = FUNC3(ar, file->data, file->size);
	if (ret) {
		FUNC4(ar, "failed to download cal_file data: %d\n", ret);
		return ret;
	}

	FUNC2(ar, ATH10K_DBG_BOOT, "boot cal file downloaded\n");

	return 0;
}