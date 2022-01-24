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
struct sockaddr {int dummy; } ;
struct enetc_ndev_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  si; } ;
struct enetc_msg_swbd {int /*<<< orphan*/  dma; scalar_t__ vaddr; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
struct enetc_msg_cmd_set_primary_mac {int /*<<< orphan*/  mac; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  ENETC_MSG_CMD_MNG_ADD ; 
 int /*<<< orphan*/  ENETC_MSG_CMD_MNG_MAC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct enetc_msg_swbd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 

__attribute__((used)) static int FUNC6(struct enetc_ndev_priv *priv,
					      struct sockaddr *saddr)
{
	struct enetc_msg_cmd_set_primary_mac *cmd;
	struct enetc_msg_swbd msg;
	int err;

	msg.size = FUNC0(sizeof(struct enetc_msg_cmd_set_primary_mac), 64);
	msg.vaddr = FUNC2(priv->dev, msg.size, &msg.dma,
				       GFP_KERNEL);
	if (!msg.vaddr) {
		FUNC1(priv->dev, "Failed to alloc Tx msg (size: %d)\n",
			msg.size);
		return -ENOMEM;
	}

	cmd = (struct enetc_msg_cmd_set_primary_mac *)msg.vaddr;
	cmd->header.type = ENETC_MSG_CMD_MNG_MAC;
	cmd->header.id = ENETC_MSG_CMD_MNG_ADD;
	FUNC5(&cmd->mac, saddr, sizeof(struct sockaddr));

	/* send the command and wait */
	err = FUNC4(priv->si, &msg);

	FUNC3(priv->dev, msg.size, msg.vaddr, msg.dma);

	return err;
}