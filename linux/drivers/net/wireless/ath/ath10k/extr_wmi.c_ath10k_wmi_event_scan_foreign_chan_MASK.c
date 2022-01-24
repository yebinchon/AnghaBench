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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int state; int /*<<< orphan*/  on_channel; int /*<<< orphan*/  roc_freq; int /*<<< orphan*/  is_roc; } ;
struct ath10k {TYPE_2__ scan; TYPE_1__* hw; int /*<<< orphan*/  scan_channel; int /*<<< orphan*/  data_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
#define  ATH10K_SCAN_ABORTING 131 
#define  ATH10K_SCAN_IDLE 130 
#define  ATH10K_SCAN_RUNNING 129 
#define  ATH10K_SCAN_STARTING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath10k *ar, u32 freq)
{
	FUNC4(&ar->data_lock);

	switch (ar->scan.state) {
	case ATH10K_SCAN_IDLE:
	case ATH10K_SCAN_STARTING:
		FUNC1(ar, "received scan foreign chan event in an invalid scan state: %s (%d)\n",
			    FUNC0(ar->scan.state),
			    ar->scan.state);
		break;
	case ATH10K_SCAN_RUNNING:
	case ATH10K_SCAN_ABORTING:
		ar->scan_channel = FUNC3(ar->hw->wiphy, freq);

		if (ar->scan.is_roc && ar->scan.roc_freq == freq)
			FUNC2(&ar->scan.on_channel);
		break;
	}
}