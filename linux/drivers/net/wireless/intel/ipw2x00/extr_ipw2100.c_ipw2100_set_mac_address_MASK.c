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
struct ipw2100_priv {int config; TYPE_1__* net_dev; int /*<<< orphan*/  mac_addr; } ;
struct host_command {int /*<<< orphan*/  host_command_parameters; int /*<<< orphan*/  host_command_length; int /*<<< orphan*/  host_command_sequence; int /*<<< orphan*/  host_command; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_ADDRESS ; 
 int CFG_CUSTOM_MAC ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct ipw2100_priv*,struct host_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ipw2100_priv *priv, int batch_mode)
{
	struct host_command cmd = {
		.host_command = ADAPTER_ADDRESS,
		.host_command_sequence = 0,
		.host_command_length = ETH_ALEN
	};
	int err;

	FUNC0("SET_MAC_ADDRESS\n");

	FUNC1("enter\n");

	if (priv->config & CFG_CUSTOM_MAC) {
		FUNC3(cmd.host_command_parameters, priv->mac_addr, ETH_ALEN);
		FUNC3(priv->net_dev->dev_addr, priv->mac_addr, ETH_ALEN);
	} else
		FUNC3(cmd.host_command_parameters, priv->net_dev->dev_addr,
		       ETH_ALEN);

	err = FUNC2(priv, &cmd);

	FUNC1("exit\n");
	return err;
}