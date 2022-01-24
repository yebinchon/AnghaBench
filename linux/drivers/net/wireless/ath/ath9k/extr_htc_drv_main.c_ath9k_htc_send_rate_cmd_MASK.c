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
struct ath_common {int dummy; } ;
struct ath9k_htc_target_rate {int dummy; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ath9k_htc_target_rate*) ; 
 int /*<<< orphan*/  WMI_RC_RATE_UPDATE_CMDID ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,char*) ; 

__attribute__((used)) static int FUNC3(struct ath9k_htc_priv *priv,
				    struct ath9k_htc_target_rate *trate)
{
	struct ath_common *common = FUNC1(priv->ah);
	int ret;
	u8 cmd_rsp;

	FUNC0(WMI_RC_RATE_UPDATE_CMDID, trate);
	if (ret) {
		FUNC2(common,
			"Unable to initialize Rate information on target\n");
	}

	return ret;
}