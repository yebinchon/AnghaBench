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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_dts_measurement_notif_v1 {int /*<<< orphan*/  temp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct iwl_rx_packet*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm,
				    struct iwl_rx_packet *pkt)
{
	struct iwl_dts_measurement_notif_v1 *notif_v1;
	int len = FUNC3(pkt);
	int temp;

	/* we can use notif_v1 only, because v2 only adds an additional
	 * parameter, which is not used in this function.
	*/
	if (FUNC2(len < sizeof(*notif_v1))) {
		FUNC1(mvm, "Invalid DTS_MEASUREMENT_NOTIFICATION\n");
		return -EINVAL;
	}

	notif_v1 = (void *)pkt->data;

	temp = FUNC4(notif_v1->temp);

	/* shouldn't be negative, but since it's s32, make sure it isn't */
	if (FUNC2(temp < 0))
		temp = 0;

	FUNC0(mvm, "DTS_MEASUREMENT_NOTIFICATION - %d\n", temp);

	return temp;
}