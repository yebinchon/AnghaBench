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
struct qlcnic_bc_trans {int /*<<< orphan*/  resp_cmpl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qlcnic_bc_trans* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct qlcnic_bc_trans **trans)
{
	*trans = FUNC1(sizeof(struct qlcnic_bc_trans), GFP_ATOMIC);
	if (!*trans)
		return -ENOMEM;

	FUNC0(&(*trans)->resp_cmpl);
	return 0;
}