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
struct ath_beacon_config {int dummy; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;
struct ath9k_beacon_state {int dummy; } ;
typedef  enum ath9k_int { ____Placeholder_ath9k_int } ath9k_int ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ATH9K_INT_BMISS ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WMI_DISABLE_INTR_CMDID ; 
 int /*<<< orphan*/  WMI_ENABLE_INTR_CMDID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ath_beacon_config*,struct ath9k_beacon_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ath9k_beacon_state*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ath9k_htc_priv *priv,
					struct ath_beacon_config *bss_conf)
{
	struct ath9k_beacon_state bs;
	enum ath9k_int imask = 0;
	__be32 htc_imask = 0;
	int ret __attribute__ ((unused));
	u8 cmd_rsp;

	if (FUNC2(priv->ah, bss_conf, &bs) == -EPERM)
		return;

	FUNC0(WMI_DISABLE_INTR_CMDID);
	FUNC3(priv->ah, &bs);
	imask |= ATH9K_INT_BMISS;
	htc_imask = FUNC4(imask);
	FUNC1(WMI_ENABLE_INTR_CMDID, &htc_imask);
}