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
typedef  int u16 ;
struct nand_chip {int dummy; } ;
struct mxc_nand_host {int buf_start; int data_buf; } ;
struct mtd_info {int oobsize; int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int,int) ; 
 struct mxc_nand_host* FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *nand_chip, u_char *buf,
			      int len)
{
	struct mtd_info *mtd = FUNC3(nand_chip);
	struct mxc_nand_host *host = FUNC2(nand_chip);
	u16 col = host->buf_start;
	int n = mtd->oobsize + mtd->writesize - col;

	n = FUNC1(n, len);

	FUNC0(buf, host->data_buf + col, n);

	host->buf_start += n;
}