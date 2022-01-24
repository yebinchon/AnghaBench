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
struct txx9ndfmc_priv {struct platform_device* dev; } ;
struct platform_device {int dummy; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 struct txx9ndfmc_priv* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static struct platform_device *FUNC2(struct mtd_info *mtd)
{
	struct nand_chip *chip = FUNC0(mtd);
	struct txx9ndfmc_priv *txx9_priv = FUNC1(chip);
	return txx9_priv->dev;
}