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
union gve_adminq_command {int /*<<< orphan*/  status; } ;
typedef  size_t u32 ;
struct gve_priv {size_t adminq_prod_cnt; size_t adminq_mask; TYPE_1__* pdev; union gve_adminq_command* adminq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOTRECOVERABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct gve_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (union gve_adminq_command*,union gve_adminq_command*,int) ; 

int FUNC7(struct gve_priv *priv,
			   union gve_adminq_command *cmd_orig)
{
	union gve_adminq_command *cmd;
	u32 status = 0;
	u32 prod_cnt;

	cmd = &priv->adminq[priv->adminq_prod_cnt & priv->adminq_mask];
	priv->adminq_prod_cnt++;
	prod_cnt = priv->adminq_prod_cnt;

	FUNC6(cmd, cmd_orig, sizeof(*cmd_orig));

	FUNC3(priv, prod_cnt);
	if (!FUNC5(priv, prod_cnt)) {
		FUNC2(&priv->pdev->dev, "AQ command timed out, need to reset AQ\n");
		return -ENOTRECOVERABLE;
	}

	FUNC6(cmd_orig, cmd, sizeof(*cmd));
	status = FUNC1(FUNC0(cmd->status));
	return FUNC4(&priv->pdev->dev, status);
}