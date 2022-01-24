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
typedef  int /*<<< orphan*/  uint8_t ;
struct sh_flctl {int dummy; } ;
typedef  enum flctl_ecc_res_t { ____Placeholder_flctl_ecc_res_t } flctl_ecc_res_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int FL_ERROR ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sh_flctl*,int) ; 

__attribute__((used)) static enum flctl_ecc_res_t FUNC4
		(struct sh_flctl *flctl, uint8_t *buff, int sector)
{
	int i;
	enum flctl_ecc_res_t res;
	unsigned long *ecc_buf = (unsigned long *)buff;

	res = FUNC3(flctl , sector);

	if (res != FL_ERROR) {
		for (i = 0; i < 4; i++) {
			ecc_buf[i] = FUNC2(FUNC0(flctl));
			ecc_buf[i] = FUNC1(ecc_buf[i]);
		}
	}

	return res;
}