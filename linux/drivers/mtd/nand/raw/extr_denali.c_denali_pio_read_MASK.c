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
typedef  int u32 ;
struct denali_controller {int caps; int (* host_read ) (struct denali_controller*,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct denali_controller*) ; 
 int DENALI_CAP_HW_ECC_FIXUP ; 
 int DENALI_MAP01 ; 
 int EBADMSG ; 
 int EIO ; 
 int INTR__ECC_ERR ; 
 int INTR__ECC_UNCOR_ERR ; 
 int INTR__ERASED_PAGE ; 
 int INTR__PAGE_XFER_INC ; 
 int /*<<< orphan*/  FUNC1 (struct denali_controller*) ; 
 int FUNC2 (struct denali_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,size_t) ; 
 int FUNC4 (struct denali_controller*,int) ; 

__attribute__((used)) static int FUNC5(struct denali_controller *denali, u32 *buf,
			   size_t size, int page)
{
	u32 addr = DENALI_MAP01 | FUNC0(denali) | page;
	u32 irq_status, ecc_err_mask;
	int i;

	if (denali->caps & DENALI_CAP_HW_ECC_FIXUP)
		ecc_err_mask = INTR__ECC_UNCOR_ERR;
	else
		ecc_err_mask = INTR__ECC_ERR;

	FUNC1(denali);

	for (i = 0; i < size / 4; i++)
		buf[i] = denali->host_read(denali, addr);

	irq_status = FUNC2(denali, INTR__PAGE_XFER_INC);
	if (!(irq_status & INTR__PAGE_XFER_INC))
		return -EIO;

	if (irq_status & INTR__ERASED_PAGE)
		FUNC3(buf, 0xff, size);

	return irq_status & ecc_err_mask ? -EBADMSG : 0;
}