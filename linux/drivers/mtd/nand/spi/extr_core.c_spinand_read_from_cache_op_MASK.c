#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct spinand_device {void* oobbuf; void* databuf; TYPE_1__* dirmaps; } ;
struct spi_mem_dirmap_desc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  in; } ;
struct TYPE_7__ {int /*<<< orphan*/  in; } ;
struct TYPE_6__ {size_t plane; } ;
struct nand_page_io_req {int dataoffs; scalar_t__ mode; scalar_t__ ooblen; int /*<<< orphan*/  ooboffs; TYPE_4__ oobbuf; scalar_t__ datalen; TYPE_3__ databuf; TYPE_2__ pos; } ;
struct nand_device {int dummy; } ;
struct mtd_info {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_5__ {struct spi_mem_dirmap_desc* rdesc; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MTD_OPS_AUTO_OOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (struct nand_device*) ; 
 scalar_t__ FUNC3 (struct nand_device*) ; 
 struct mtd_info* FUNC4 (struct nand_device*) ; 
 int FUNC5 (struct spi_mem_dirmap_desc*,int,unsigned int,void*) ; 
 struct nand_device* FUNC6 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC7(struct spinand_device *spinand,
				      const struct nand_page_io_req *req)
{
	struct nand_device *nand = FUNC6(spinand);
	struct mtd_info *mtd = FUNC4(nand);
	struct spi_mem_dirmap_desc *rdesc;
	unsigned int nbytes = 0;
	void *buf = NULL;
	u16 column = 0;
	ssize_t ret;

	if (req->datalen) {
		buf = spinand->databuf;
		nbytes = FUNC2(nand);
		column = 0;
	}

	if (req->ooblen) {
		nbytes += FUNC3(nand);
		if (!buf) {
			buf = spinand->oobbuf;
			column = FUNC2(nand);
		}
	}

	rdesc = spinand->dirmaps[req->pos.plane].rdesc;

	while (nbytes) {
		ret = FUNC5(rdesc, column, nbytes, buf);
		if (ret < 0)
			return ret;

		if (!ret || ret > nbytes)
			return -EIO;

		nbytes -= ret;
		column += ret;
		buf += ret;
	}

	if (req->datalen)
		FUNC0(req->databuf.in, spinand->databuf + req->dataoffs,
		       req->datalen);

	if (req->ooblen) {
		if (req->mode == MTD_OPS_AUTO_OOB)
			FUNC1(mtd, req->oobbuf.in,
						    spinand->oobbuf,
						    req->ooboffs,
						    req->ooblen);
		else
			FUNC0(req->oobbuf.in, spinand->oobbuf + req->ooboffs,
			       req->ooblen);
	}

	return 0;
}