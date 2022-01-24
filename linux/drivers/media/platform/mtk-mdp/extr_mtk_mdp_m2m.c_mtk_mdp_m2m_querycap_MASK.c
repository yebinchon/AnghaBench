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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct mtk_mdp_dev {TYPE_1__* pdev; } ;
struct mtk_mdp_ctx {struct mtk_mdp_dev* mdp_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 char* MTK_MDP_MODULE_NAME ; 
 struct mtk_mdp_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				struct v4l2_capability *cap)
{
	struct mtk_mdp_ctx *ctx = FUNC0(fh);
	struct mtk_mdp_dev *mdp = ctx->mdp_dev;

	FUNC1(cap->driver, MTK_MDP_MODULE_NAME, sizeof(cap->driver));
	FUNC1(cap->card, mdp->pdev->name, sizeof(cap->card));
	FUNC1(cap->bus_info, "platform:mt8173", sizeof(cap->bus_info));

	return 0;
}