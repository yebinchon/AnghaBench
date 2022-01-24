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
struct TYPE_2__ {int state; } ;
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

__attribute__((used)) static void FUNC4(struct ath10k *ar)
{
	FUNC3(&ar->data_lock);

	switch (ar->scan.state) {
	case ATH10K_SCAN_IDLE:
	case ATH10K_SCAN_STARTING:
		/* One suspected reason scan can be completed while starting is
		 * if firmware fails to deliver all scan events to the host,
		 * e.g. when transport pipe is full. This has been observed
		 * with spectral scan phyerr events starving wmi transport
		 * pipe. In such case the "scan completed" event should be (and
		 * is) ignored by the host as it may be just firmware's scan
		 * state machine recovering.
		 */
		FUNC2(ar, "received scan completed event in an invalid scan state: %s (%d)\n",
			    FUNC1(ar->scan.state),
			    ar->scan.state);
		break;
	case ATH10K_SCAN_RUNNING:
	case ATH10K_SCAN_ABORTING:
		FUNC0(ar);
		break;
	}
}