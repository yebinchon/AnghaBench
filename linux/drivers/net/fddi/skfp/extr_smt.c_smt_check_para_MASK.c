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
typedef  scalar_t__ u_short ;
struct smt_header {int dummy; } ;
struct s_smc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,struct smt_header*,int) ; 

int FUNC2(struct s_smc *smc, struct smt_header	*sm,
		   const u_short list[])
{
	const u_short		*p = list ;
	while (*p) {
		if (!FUNC1(smc,sm,(int) *p)) {
			FUNC0("SMT: smt_check_para - missing para %hx", *p);
			return -1;
		}
		p++ ;
	}
	return 0;
}