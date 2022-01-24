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
typedef  int /*<<< orphan*/  u16 ;
struct htc_target {int dummy; } ;
struct ath6kl_htc_credit_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_CONTROL_SVC ; 
 int /*<<< orphan*/  WMI_DATA_BE_SVC ; 
 int /*<<< orphan*/  WMI_DATA_BK_SVC ; 
 int /*<<< orphan*/  WMI_DATA_VI_SVC ; 
 int /*<<< orphan*/  WMI_DATA_VO_SVC ; 
 int /*<<< orphan*/  FUNC0 (struct htc_target*,struct ath6kl_htc_credit_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_htc_credit_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct htc_target *htc_target,
			       struct ath6kl_htc_credit_info *cred_info)
{
	u16 servicepriority[5];

	FUNC1(cred_info, 0, sizeof(struct ath6kl_htc_credit_info));

	servicepriority[0] = WMI_CONTROL_SVC;  /* highest */
	servicepriority[1] = WMI_DATA_VO_SVC;
	servicepriority[2] = WMI_DATA_VI_SVC;
	servicepriority[3] = WMI_DATA_BE_SVC;
	servicepriority[4] = WMI_DATA_BK_SVC; /* lowest */

	/* set priority list */
	FUNC0(htc_target, cred_info, servicepriority, 5);

	return 0;
}