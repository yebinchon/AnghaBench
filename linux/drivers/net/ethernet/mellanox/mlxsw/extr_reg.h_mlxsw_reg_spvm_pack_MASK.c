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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  spvm ; 

__attribute__((used)) static inline void FUNC7(char *payload, u8 local_port,
				       u16 vid_begin, u16 vid_end,
				       bool is_member, bool untagged)
{
	int size = vid_end - vid_begin + 1;
	int i;

	FUNC0(spvm, payload);
	FUNC1(payload, local_port);
	FUNC2(payload, size);

	for (i = 0; i < size; i++) {
		FUNC4(payload, i, is_member);
		FUNC3(payload, i, is_member);
		FUNC5(payload, i, untagged);
		FUNC6(payload, i, vid_begin + i);
	}
}