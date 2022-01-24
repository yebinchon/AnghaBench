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
typedef  int /*<<< orphan*/  u16 ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_cpp*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,unsigned long long) ; 
 int FUNC3 (struct nfp_cpp*,int /*<<< orphan*/  const,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct nfp_cpp *cpp,
		       int target, unsigned long long address, u32 key)
{
	const u32 muw = FUNC0(target, 4, 0);    /* atomic_write */
	u16 interface = FUNC1(cpp);
	int err;

	err = FUNC2(interface, &target, address);
	if (err)
		return err;

	err = FUNC3(cpp, muw, address + 4, key);
	if (err)
		return err;

	err = FUNC3(cpp, muw, address, FUNC4(interface));
	if (err)
		return err;

	return 0;
}