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
struct ath10k_qmi {int nr_mem_region; int /*<<< orphan*/ * mem_region; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k_qmi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_qmi*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ath10k_qmi *qmi)
{
	int ret;
	int i;

	for (i = 0; i < qmi->nr_mem_region; i++) {
		ret = FUNC0(qmi, &qmi->mem_region[i]);
		if (ret)
			goto err_unmap;
	}

	return 0;

err_unmap:
	for (i--; i >= 0; i--)
		FUNC1(qmi, &qmi->mem_region[i]);
	return ret;
}