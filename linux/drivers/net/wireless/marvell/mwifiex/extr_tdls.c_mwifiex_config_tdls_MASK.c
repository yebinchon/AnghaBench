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
struct mwifiex_tdls_config {int /*<<< orphan*/  enable; } ;
struct mwifiex_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_TDLS_CS_ENABLE_CONFIG ; 
 int /*<<< orphan*/  HostCmd_CMD_TDLS_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_tdls_config*,int) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_private *priv, u8 enable)
{
	struct mwifiex_tdls_config config;

	config.enable = FUNC0(enable);
	return FUNC1(priv, HostCmd_CMD_TDLS_CONFIG,
				ACT_TDLS_CS_ENABLE_CONFIG, 0, &config, true);
}