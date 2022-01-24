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
struct denali_controller {int /*<<< orphan*/  (* host_write ) (struct denali_controller*,int,int const) ;} ;

/* Variables and functions */
 int FUNC0 (struct denali_controller*) ; 
 int DENALI_MAP01 ; 
 int EIO ; 
 int INTR__PROGRAM_COMP ; 
 int INTR__PROGRAM_FAIL ; 
 int /*<<< orphan*/  FUNC1 (struct denali_controller*) ; 
 int FUNC2 (struct denali_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct denali_controller*,int,int const) ; 

__attribute__((used)) static int FUNC4(struct denali_controller *denali, const u32 *buf,
			    size_t size, int page)
{
	u32 addr = DENALI_MAP01 | FUNC0(denali) | page;
	u32 irq_status;
	int i;

	FUNC1(denali);

	for (i = 0; i < size / 4; i++)
		denali->host_write(denali, addr, buf[i]);

	irq_status = FUNC2(denali,
					 INTR__PROGRAM_COMP |
					 INTR__PROGRAM_FAIL);
	if (!(irq_status & INTR__PROGRAM_COMP))
		return -EIO;

	return 0;
}