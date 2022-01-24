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
typedef  int /*<<< orphan*/  u32 ;
struct hinic_func_attr {scalar_t__ ppf_idx; int /*<<< orphan*/  func_type; } ;
struct hinic_hwif {struct hinic_func_attr attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  HINIC_PPF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDX ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hinic_hwif *hwif)
{
	struct hinic_func_attr *attr = &hwif->attr;
	u32 addr, val, ppf_election;

	/* Read Modify Write */
	addr = FUNC0(FUNC2(hwif));

	val = FUNC6(hwif, addr);
	val = FUNC3(val, IDX);

	ppf_election = FUNC5(FUNC1(hwif), IDX);

	val |= ppf_election;
	FUNC7(hwif, addr, val);

	/* check PPF */
	val = FUNC6(hwif, addr);

	attr->ppf_idx = FUNC4(val, IDX);
	if (attr->ppf_idx == FUNC1(hwif))
		attr->func_type = HINIC_PPF;
}