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
struct ipw_sensitivity_calib {int /*<<< orphan*/  beacon_rssi_raw; } ;
struct ipw_priv {int dummy; } ;
typedef  int /*<<< orphan*/  calib ;

/* Variables and functions */
 int /*<<< orphan*/  IPW_CMD_SENSITIVITY_CALIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int,struct ipw_sensitivity_calib*) ; 

__attribute__((used)) static int FUNC2(struct ipw_priv *priv, u16 sens)
{
	struct ipw_sensitivity_calib calib = {
		.beacon_rssi_raw = FUNC0(sens),
	};

	return FUNC1(priv, IPW_CMD_SENSITIVITY_CALIB, sizeof(calib),
				&calib);
}