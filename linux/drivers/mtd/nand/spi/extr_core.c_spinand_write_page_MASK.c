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
typedef  int u8 ;
struct spinand_device {int dummy; } ;
struct nand_page_io_req {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int STATUS_PROG_FAILED ; 
 int FUNC0 (struct spinand_device*,struct nand_page_io_req const*) ; 
 int FUNC1 (struct spinand_device*,int*) ; 
 int FUNC2 (struct spinand_device*) ; 
 int FUNC3 (struct spinand_device*,struct nand_page_io_req const*) ; 

__attribute__((used)) static int FUNC4(struct spinand_device *spinand,
			      const struct nand_page_io_req *req)
{
	u8 status;
	int ret;

	ret = FUNC2(spinand);
	if (ret)
		return ret;

	ret = FUNC3(spinand, req);
	if (ret)
		return ret;

	ret = FUNC0(spinand, req);
	if (ret)
		return ret;

	ret = FUNC1(spinand, &status);
	if (!ret && (status & STATUS_PROG_FAILED))
		ret = -EIO;

	return ret;
}