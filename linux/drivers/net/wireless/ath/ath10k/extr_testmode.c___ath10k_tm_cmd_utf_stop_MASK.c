#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * firmware; scalar_t__ codeswap_len; scalar_t__ codeswap_data; } ;
struct TYPE_4__ {TYPE_3__ fw_file; } ;
struct TYPE_5__ {int utf_monitor; TYPE_1__ utf_mode_fw; } ;
struct ath10k {int /*<<< orphan*/  state; TYPE_2__ testmode; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ath10k *ar)
{
	FUNC3(&ar->conf_mutex);

	FUNC0(ar);
	FUNC1(ar);

	FUNC5(&ar->data_lock);

	ar->testmode.utf_monitor = false;

	FUNC6(&ar->data_lock);

	if (ar->testmode.utf_mode_fw.fw_file.codeswap_data &&
	    ar->testmode.utf_mode_fw.fw_file.codeswap_len)
		FUNC2(ar,
					     &ar->testmode.utf_mode_fw.fw_file);

	FUNC4(ar->testmode.utf_mode_fw.fw_file.firmware);
	ar->testmode.utf_mode_fw.fw_file.firmware = NULL;

	ar->state = ATH10K_STATE_OFF;
}