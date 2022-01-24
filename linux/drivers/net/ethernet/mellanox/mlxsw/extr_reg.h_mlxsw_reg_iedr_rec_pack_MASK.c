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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static inline void FUNC5(char *payload, int rec_index,
					   u8 rec_type, u16 rec_size,
					   u32 rec_index_start)
{
	u8 num_rec = FUNC0(payload);

	if (rec_index >= num_rec)
		FUNC1(payload, rec_index + 1);
	FUNC4(payload, rec_index, rec_type);
	FUNC3(payload, rec_index, rec_size);
	FUNC2(payload, rec_index, rec_index_start);
}