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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  outer_headers ; 

__attribute__((used)) static bool FUNC3(u32 *match_criteria)
{
	int size = FUNC1(fte_match_param, outer_headers);
	char *outer_headers_c = FUNC0(fte_match_param, match_criteria,
					     outer_headers);

	return outer_headers_c[0] == 0 && !FUNC2(outer_headers_c,
						  outer_headers_c + 1,
						  size - 1);
}