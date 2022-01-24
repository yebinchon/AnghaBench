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
typedef  int /*<<< orphan*/  u_char ;
struct s3c2410_nand_info {scalar_t__ regs; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2440_NFDATA ; 
 struct mtd_info* FUNC0 (struct nand_chip*) ; 
 struct s3c2410_nand_info* FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *this, const u_char *buf,
				   int len)
{
	struct mtd_info *mtd = FUNC0(this);
	struct s3c2410_nand_info *info = FUNC1(mtd);

	FUNC3(info->regs + S3C2440_NFDATA, buf, len >> 2);

	/* cleanup any fractional write */
	if (len & 3) {
		buf += len & ~3;

		for (; len & 3; len--, buf++)
			FUNC2(*buf, info->regs + S3C2440_NFDATA);
	}
}