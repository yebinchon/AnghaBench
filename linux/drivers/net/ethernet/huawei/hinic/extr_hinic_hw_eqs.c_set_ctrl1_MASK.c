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
struct hinic_eq {int type; int q_len; int /*<<< orphan*/  hwif; int /*<<< orphan*/  q_id; } ;
typedef  enum hinic_eq_type { ____Placeholder_hinic_eq_type } hinic_eq_type ;

/* Variables and functions */
 int /*<<< orphan*/  ELEM_SIZE ; 
 int FUNC0 (struct hinic_eq*) ; 
 int FUNC1 (struct hinic_eq*) ; 
 int HINIC_AEQ ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int HINIC_CEQ ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC10(struct hinic_eq *eq)
{
	enum hinic_eq_type type = eq->type;
	u32 page_size_val, elem_size;
	u32 addr, val, ctrl1;

	if (type == HINIC_AEQ) {
		/* RMW Ctrl1 */
		addr = FUNC6(eq->q_id);

		page_size_val = FUNC1(eq);
		elem_size = FUNC0(eq);

		val = FUNC8(eq->hwif, addr);

		val = FUNC2(val, LEN)          &
		      FUNC2(val, ELEM_SIZE)    &
		      FUNC2(val, PAGE_SIZE);

		ctrl1 = FUNC3(eq->q_len, LEN)            |
			FUNC3(elem_size, ELEM_SIZE)      |
			FUNC3(page_size_val, PAGE_SIZE);

		val |= ctrl1;

		FUNC9(eq->hwif, addr, val);
	} else if (type == HINIC_CEQ) {
		/* RMW Ctrl1 */
		addr = FUNC7(eq->q_id);

		page_size_val = FUNC1(eq);

		val = FUNC8(eq->hwif, addr);

		val = FUNC4(val, LEN) &
		      FUNC4(val, PAGE_SIZE);

		ctrl1 = FUNC5(eq->q_len, LEN) |
			FUNC5(page_size_val, PAGE_SIZE);

		val |= ctrl1;

		FUNC9(eq->hwif, addr, val);
	}
}