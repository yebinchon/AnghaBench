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
struct cnic_ulp_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cnic_lock ; 
 int /*<<< orphan*/ * cnic_ulp_tbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cnic_ulp_ops* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct cnic_ulp_ops *FUNC2(int type)
{
	return FUNC1(cnic_ulp_tbl[type],
					 FUNC0(&cnic_lock));
}