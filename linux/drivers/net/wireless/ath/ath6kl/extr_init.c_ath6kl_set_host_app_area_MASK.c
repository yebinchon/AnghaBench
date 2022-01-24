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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct host_app_area {int /*<<< orphan*/  wmi_protocol_ver; } ;
struct ath6kl {int /*<<< orphan*/  target_type; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_PROTOCOL_VERSION ; 
 scalar_t__ FUNC2 (struct ath6kl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ath6kl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath6kl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hi_app_host_interest ; 

__attribute__((used)) static int FUNC6(struct ath6kl *ar)
{
	u32 address, data;
	struct host_app_area host_app_area;

	/* Fetch the address of the host_app_area_s
	 * instance in the host interest area */
	address = FUNC4(ar, FUNC0(hi_app_host_interest));
	address = FUNC1(ar->target_type, address);

	if (FUNC2(ar, address, &data))
		return -EIO;

	address = FUNC1(ar->target_type, data);
	host_app_area.wmi_protocol_ver = FUNC5(WMI_PROTOCOL_VERSION);
	if (FUNC3(ar, address, (u8 *) &host_app_area,
			      sizeof(struct host_app_area)))
		return -EIO;

	return 0;
}