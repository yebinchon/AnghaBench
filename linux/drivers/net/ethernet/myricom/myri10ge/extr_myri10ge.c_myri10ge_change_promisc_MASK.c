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
struct myri10ge_priv {int /*<<< orphan*/  dev; } ;
struct myri10ge_cmd {int dummy; } ;

/* Variables and functions */
 int MXGEFW_DISABLE_PROMISC ; 
 int MXGEFW_ENABLE_PROMISC ; 
 int FUNC0 (struct myri10ge_priv*,int,struct myri10ge_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(struct myri10ge_priv *mgp, int promisc, int atomic)
{
	struct myri10ge_cmd cmd;
	int status, ctl;

	ctl = promisc ? MXGEFW_ENABLE_PROMISC : MXGEFW_DISABLE_PROMISC;
	status = FUNC0(mgp, ctl, &cmd, atomic);
	if (status)
		FUNC1(mgp->dev, "Failed to set promisc mode\n");
}