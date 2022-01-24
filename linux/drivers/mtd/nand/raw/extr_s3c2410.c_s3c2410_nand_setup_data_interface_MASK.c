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
struct s3c2410_platform_nand {void* twrph1; void* twrph0; void* tacls; } ;
struct s3c2410_nand_info {struct s3c2410_platform_nand* platform; } ;
struct nand_sdr_timings {int tCLS_min; int tWP_min; int tCLH_min; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC1 (struct nand_sdr_timings const*) ; 
 struct nand_sdr_timings* FUNC2 (struct nand_data_interface const*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 struct s3c2410_nand_info* FUNC4 (struct mtd_info*) ; 
 int FUNC5 (struct s3c2410_nand_info*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip, int csline,
					const struct nand_data_interface *conf)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct s3c2410_nand_info *info = FUNC4(mtd);
	struct s3c2410_platform_nand *pdata = info->platform;
	const struct nand_sdr_timings *timings;
	int tacls;

	timings = FUNC2(conf);
	if (FUNC1(timings))
		return -ENOTSUPP;

	tacls = timings->tCLS_min - timings->tWP_min;
	if (tacls < 0)
		tacls = 0;

	pdata->tacls  = FUNC0(tacls, 1000);
	pdata->twrph0 = FUNC0(timings->tWP_min, 1000);
	pdata->twrph1 = FUNC0(timings->tCLH_min, 1000);

	return FUNC5(info);
}