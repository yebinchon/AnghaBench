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
struct map_info {int dummy; } ;
typedef  int /*<<< orphan*/  map_word ;

/* Variables and functions */
 int /*<<< orphan*/  PFOW_QUERY_STRING_F ; 
 int /*<<< orphan*/  PFOW_QUERY_STRING_O ; 
 int /*<<< orphan*/  PFOW_QUERY_STRING_P ; 
 int /*<<< orphan*/  PFOW_QUERY_STRING_W ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  lpdd2_nvm_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct map_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct map_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct map_info *map)
{
	map_word pfow_val[4];
	unsigned int found = 1;

	FUNC3(&lpdd2_nvm_mutex);

	FUNC6(map);

	/* Load string from array */
	pfow_val[0] = FUNC1(map, FUNC7(map, PFOW_QUERY_STRING_P));
	pfow_val[1] = FUNC1(map, FUNC7(map, PFOW_QUERY_STRING_F));
	pfow_val[2] = FUNC1(map, FUNC7(map, PFOW_QUERY_STRING_O));
	pfow_val[3] = FUNC1(map, FUNC7(map, PFOW_QUERY_STRING_W));

	/* Verify the string loaded vs expected */
	if (!FUNC2(map, FUNC0('P'), pfow_val[0]))
		found = 0;
	if (!FUNC2(map, FUNC0('F'), pfow_val[1]))
		found = 0;
	if (!FUNC2(map, FUNC0('O'), pfow_val[2]))
		found = 0;
	if (!FUNC2(map, FUNC0('W'), pfow_val[3]))
		found = 0;

	FUNC5(map);

	FUNC4(&lpdd2_nvm_mutex);

	return found;
}