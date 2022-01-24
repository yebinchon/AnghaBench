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
struct nfp_cpp_area {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfp_cpp_area*) ; 
 struct nfp_cpp_area* FUNC1 (struct nfp_cpp*,int /*<<< orphan*/ ,char const*,unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp_area*) ; 

struct nfp_cpp_area *
FUNC3(struct nfp_cpp *cpp, const char *name, u32 dest,
			   unsigned long long address, unsigned long size)
{
	struct nfp_cpp_area *area;

	area = FUNC1(cpp, dest, name, address, size);
	if (!area)
		return NULL;

	if (FUNC0(area)) {
		FUNC2(area);
		return NULL;
	}

	return area;
}