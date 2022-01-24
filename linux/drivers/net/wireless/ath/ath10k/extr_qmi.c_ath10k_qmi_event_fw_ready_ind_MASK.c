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
struct ath10k_qmi {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_QMI ; 
 int /*<<< orphan*/  ATH10K_QMI_EVENT_FW_READY_IND ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ath10k_qmi *qmi)
{
	struct ath10k *ar = qmi->ar;

	FUNC0(ar, ATH10K_DBG_QMI, "wifi fw ready event received\n");
	FUNC1(ar, ATH10K_QMI_EVENT_FW_READY_IND);

	return 0;
}