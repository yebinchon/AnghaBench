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
union gve_adminq_command {int /*<<< orphan*/  opcode; } ;
struct gve_priv {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  GVE_ADMINQ_DECONFIGURE_DEVICE_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gve_priv*,union gve_adminq_command*) ; 
 int /*<<< orphan*/  FUNC2 (union gve_adminq_command*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct gve_priv *priv)
{
	union gve_adminq_command cmd;

	FUNC2(&cmd, 0, sizeof(cmd));
	cmd.opcode = FUNC0(GVE_ADMINQ_DECONFIGURE_DEVICE_RESOURCES);

	return FUNC1(priv, &cmd);
}