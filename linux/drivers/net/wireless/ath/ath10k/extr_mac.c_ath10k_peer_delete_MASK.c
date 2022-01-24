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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {int /*<<< orphan*/  num_peers; int /*<<< orphan*/  peer_delete_done; TYPE_1__ wmi; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  WMI_SERVICE_SYNC_DELETE_CMDS ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*) ; 
 int FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, u32 vdev_id, const u8 *addr)
{
	int ret;

	FUNC3(&ar->conf_mutex);

	ret = FUNC2(ar, vdev_id, addr);
	if (ret)
		return ret;

	ret = FUNC0(ar, vdev_id, addr);
	if (ret)
		return ret;

	if (FUNC4(WMI_SERVICE_SYNC_DELETE_CMDS, ar->wmi.svc_map)) {
		unsigned long time_left;

		time_left = FUNC5
			    (&ar->peer_delete_done, 5 * HZ);

		if (!time_left) {
			FUNC1(ar, "Timeout in receiving peer delete response\n");
			return -ETIMEDOUT;
		}
	}

	ar->num_peers--;

	return 0;
}