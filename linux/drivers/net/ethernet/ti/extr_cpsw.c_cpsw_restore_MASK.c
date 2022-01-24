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
struct cpsw_priv {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpsw_cbs_resume ; 
 int /*<<< orphan*/  cpsw_mqprio_resume ; 
 int /*<<< orphan*/  cpsw_restore_vlans ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_priv*,int /*<<< orphan*/ ,struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cpsw_priv*) ; 

__attribute__((used)) static void FUNC2(struct cpsw_priv *priv)
{
	/* restore vlan configurations */
	FUNC1(priv->ndev, cpsw_restore_vlans, priv);

	/* restore MQPRIO offload */
	FUNC0(priv, cpsw_mqprio_resume, priv);

	/* restore CBS offload */
	FUNC0(priv, cpsw_cbs_resume, priv);
}