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
struct ce_attr {scalar_t__ dest_nentries; scalar_t__ src_nentries; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k*,unsigned int,struct ce_attr const*) ; 
 int FUNC1 (struct ath10k*,unsigned int,struct ce_attr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,unsigned int,int) ; 

int FUNC3(struct ath10k *ar, unsigned int ce_id,
			const struct ce_attr *attr)
{
	int ret;

	if (attr->src_nentries) {
		ret = FUNC1(ar, ce_id, attr);
		if (ret) {
			FUNC2(ar, "Failed to initialize CE src ring for ID: %d (%d)\n",
				   ce_id, ret);
			return ret;
		}
	}

	if (attr->dest_nentries) {
		ret = FUNC0(ar, ce_id, attr);
		if (ret) {
			FUNC2(ar, "Failed to initialize CE dest ring for ID: %d (%d)\n",
				   ce_id, ret);
			return ret;
		}
	}

	return 0;
}