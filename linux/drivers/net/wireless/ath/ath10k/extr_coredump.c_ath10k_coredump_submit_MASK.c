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
struct ath10k_dump_file_data {int /*<<< orphan*/  len; } ;
struct ath10k {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ath10k_dump_file_data* FUNC0 (struct ath10k*) ; 
 scalar_t__ ath10k_coredump_mask ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ath10k_dump_file_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct ath10k *ar)
{
	struct ath10k_dump_file_data *dump;

	if (ath10k_coredump_mask == 0)
		/* coredump disabled */
		return 0;

	dump = FUNC0(ar);
	if (!dump) {
		FUNC1(ar, "no crash dump data found for devcoredump");
		return -ENODATA;
	}

	FUNC2(ar->dev, dump, FUNC3(dump->len), GFP_KERNEL);

	return 0;
}