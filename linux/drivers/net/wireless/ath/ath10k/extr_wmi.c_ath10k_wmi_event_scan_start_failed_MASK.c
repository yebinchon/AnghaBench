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
struct TYPE_2__ {int state; int /*<<< orphan*/  started; } ;
struct ath10k {TYPE_1__ scan; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
#define  ATH10K_SCAN_ABORTING 131 
#define  ATH10K_SCAN_IDLE 130 
#define  ATH10K_SCAN_RUNNING 129 
#define  ATH10K_SCAN_STARTING 128 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath10k *ar)
{
	FUNC4(&ar->data_lock);

	switch (ar->scan.state) {
	case ATH10K_SCAN_IDLE:
	case ATH10K_SCAN_RUNNING:
	case ATH10K_SCAN_ABORTING:
		FUNC2(ar, "received scan start failed event in an invalid scan state: %s (%d)\n",
			    FUNC1(ar->scan.state),
			    ar->scan.state);
		break;
	case ATH10K_SCAN_STARTING:
		FUNC3(&ar->scan.started);
		FUNC0(ar);
		break;
	}
}