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
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int dummy; } ;
struct fsl_elbc_mtd {int /*<<< orphan*/  dev; TYPE_1__* ctrl; } ;
struct fsl_elbc_fcm_ctrl {scalar_t__ index; scalar_t__ read_bytes; int /*<<< orphan*/ * addr; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fsl_elbc_mtd* FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static u8 FUNC3(struct nand_chip *chip)
{
	struct fsl_elbc_mtd *priv = FUNC2(chip);
	struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = priv->ctrl->nand;

	/* If there are still bytes in the FCM, then use the next byte. */
	if (elbc_fcm_ctrl->index < elbc_fcm_ctrl->read_bytes)
		return FUNC1(&elbc_fcm_ctrl->addr[elbc_fcm_ctrl->index++]);

	FUNC0(priv->dev, "read_byte beyond end of buffer\n");
	return ERR_BYTE;
}