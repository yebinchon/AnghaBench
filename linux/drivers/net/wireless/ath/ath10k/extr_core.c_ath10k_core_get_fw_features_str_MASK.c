#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;
struct ath10k {TYPE_2__ normal_mode_fw; } ;

/* Variables and functions */
 int ATH10K_FW_FEATURE_COUNT ; 
 scalar_t__ FUNC0 (char*,size_t,int) ; 
 scalar_t__ FUNC1 (char*,size_t,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath10k *ar,
				     char *buf,
				     size_t buf_len)
{
	size_t len = 0;
	int i;

	for (i = 0; i < ATH10K_FW_FEATURE_COUNT; i++) {
		if (FUNC2(i, ar->normal_mode_fw.fw_file.fw_features)) {
			if (len > 0)
				len += FUNC1(buf + len, buf_len - len, ",");

			len += FUNC0(buf + len,
							      buf_len - len,
							      i);
		}
	}
}