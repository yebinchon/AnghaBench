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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;

/* Variables and functions */
 int MLXSW_REG_SPVMLR_REC_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  spvmlr ; 

__attribute__((used)) static inline void FUNC6(char *payload, u8 local_port,
					 u16 vid_begin, u16 vid_end,
					 bool learn_enable)
{
	int num_rec = vid_end - vid_begin + 1;
	int i;

	FUNC1(num_rec < 1 || num_rec > MLXSW_REG_SPVMLR_REC_MAX_COUNT);

	FUNC0(spvmlr, payload);
	FUNC2(payload, local_port);
	FUNC3(payload, num_rec);

	for (i = 0; i < num_rec; i++) {
		FUNC4(payload, i, learn_enable);
		FUNC5(payload, i, vid_begin + i);
	}
}