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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static inline void FUNC5(char *payload, int rec_index,
					     u8 state, u8 bank, u32 bf_index)
{
	u8 num_rec = FUNC3(payload);

	if (rec_index >= num_rec)
		FUNC4(payload, rec_index + 1);
	FUNC2(payload, rec_index, state);
	FUNC0(payload, rec_index, bank);
	FUNC1(payload, rec_index, bf_index);
}